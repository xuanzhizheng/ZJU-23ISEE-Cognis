"""生成 Lab4 实验报告 Word 文档（.docx）"""
from pathlib import Path
from docx import Document
from docx.shared import Pt, Cm, RGBColor, Inches
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.enum.table import WD_TABLE_ALIGNMENT
from docx.oxml.ns import qn
from docx.oxml import OxmlElement
import copy

BASE = Path(__file__).resolve().parent  # Lab4实验报告/
FIG_DIR = BASE / "figures"
OUT = BASE / "Lab4实验报告.docx"

doc = Document()

# ── 全局字体默认 ─────────────────────────────────────────────────────────────
style = doc.styles["Normal"]
style.font.name = "宋体"
style.font.size = Pt(10.5)
style.element.rPr.rFonts.set(qn("w:eastAsia"), "宋体")

def set_font(run, name="宋体", size=10.5, bold=False, italic=False, color=None):
    run.font.name = name
    run.font.size = Pt(size)
    run.bold = bold
    run.italic = italic
    run.font.element.rPr.rFonts.set(qn("w:eastAsia"), name)
    if color:
        run.font.color.rgb = RGBColor(*color)

def heading(text, level=1, size=14):
    p = doc.add_paragraph()
    p.alignment = WD_ALIGN_PARAGRAPH.LEFT
    pf = p.paragraph_format
    pf.space_before = Pt(6)
    pf.space_after  = Pt(4)
    run = p.add_run(text)
    set_font(run, "黑体", size, bold=True)
    return p

def body(text, indent=False):
    p = doc.add_paragraph()
    pf = p.paragraph_format
    pf.space_after = Pt(4)
    if indent:
        pf.first_line_indent = Pt(21)  # 两字符缩进
    run = p.add_run(text)
    set_font(run)
    return p

def code_block(lines: list[str]):
    """等宽字体代码块"""
    p = doc.add_paragraph()
    pf = p.paragraph_format
    pf.space_after = Pt(2)
    pf.left_indent = Cm(0.5)
    pf.right_indent = Cm(0.5)
    for i, line in enumerate(lines):
        run = p.add_run(line)
        run.font.name = "Courier New"
        run.font.size = Pt(9)
        run.font.element.rPr.rFonts.set(qn("w:eastAsia"), "宋体")
        if i < len(lines) - 1:
            run.add_break()
    # 给段落加浅灰色底纹
    pPr = p._p.get_or_add_pPr()
    shd = OxmlElement("w:shd")
    shd.set(qn("w:val"), "clear")
    shd.set(qn("w:color"), "auto")
    shd.set(qn("w:fill"), "F8F8F8")
    pPr.append(shd)
    return p

def insert_figure(img_path, caption_text, width=Inches(5.5)):
    if not img_path.exists():
        body(f"[图像文件未找到: {img_path.name}]")
        return
    p = doc.add_paragraph()
    p.alignment = WD_ALIGN_PARAGRAPH.CENTER
    run = p.add_run()
    run.add_picture(str(img_path), width=width)
    cap = doc.add_paragraph()
    cap.alignment = WD_ALIGN_PARAGRAPH.CENTER
    run2 = cap.add_run(caption_text)
    set_font(run2, size=9, italic=True)
    cap.paragraph_format.space_after = Pt(8)

def output_block(lines: list[str]):
    """输出结果等宽块"""
    code_block(lines)

# ══════════════════════════════════════════════════════════════════════════════
# 封面信息
# ══════════════════════════════════════════════════════════════════════════════
title_p = doc.add_paragraph()
title_p.alignment = WD_ALIGN_PARAGRAPH.CENTER
title_p.paragraph_format.space_before = Pt(12)
title_r = title_p.add_run("人工智能实验  实验报告")
set_font(title_r, "黑体", 16, bold=True)

doc.add_paragraph()  # 空行

info_lines = [
    ("专业", "电子科学与技术"),
    ("姓名", "郑智瑄"),
    ("学号", "3230103913"),
    ("实验名称", "实验2-4, 2-5, 2-6"),
    ("实验类型", "设计型实验"),
    ("实验室", "玉泉高分子楼-203"),
    ("指导教师", "魏准"),
    ("课程名称", "人工智能实验"),
]
for label, value in info_lines:
    p = doc.add_paragraph()
    p.paragraph_format.space_after = Pt(2)
    r1 = p.add_run(f"{label}：")
    set_font(r1, bold=True)
    r2 = p.add_run(value)
    set_font(r2)

doc.add_paragraph()

# ══════════════════════════════════════════════════════════════════════════════
# 一、实验 2-4 SVM 线性分类
# ══════════════════════════════════════════════════════════════════════════════
heading("一、实验 2-4：SVM 线性分类", size=13)

heading("1. 实验目的", level=2, size=11)
body(
    "基于 Scikit-Learn 的支持向量机模块，使用鸢尾花数据集中的花瓣长度与宽度两个特征，"
    "完成线性 SVM 二分类（维吉尼亚鸢尾花 vs 其余类别），可视化决策超平面、间隔边界及支持向量。",
    indent=True,
)

heading("2. 实验原理", level=2, size=11)
body(
    "支持向量机（SVM）的目标是在特征空间中找到使两类样本间隔最大的超平面。"
    "最优决策超平面满足 w^T·x + b = 0，间隔宽度为 2/||w||。"
    "为获得最大间隔，等价于求解凸优化：min (1/2)||w||²，s.t. y_i(w^T·x_i+b)≥1。\n"
    "软间隔 SVM 引入松弛变量 ξ_i ≥ 0 和正则化超参数 C，允许少量样本落在间隔内部：\n"
    "min (1/2)||w||² + C·Σξ_i，s.t. y_i(w^T·x_i+b)≥1-ξ_i，ξ_i≥0。\n"
    "决策超平面由位于间隔边界上（或内部）的少数样本（支持向量）完全决定。",
    indent=True,
)

heading("3. 核心代码", level=2, size=11)
code_block([
    "from sklearn import datasets",
    "from sklearn.svm import SVC",
    "from sklearn.preprocessing import StandardScaler",
    "from sklearn.pipeline import Pipeline",
    "",
    "iris = datasets.load_iris()",
    "X = iris['data'][:, (2, 3)]            # 花瓣长度、花瓣宽度",
    "y = (iris['target'] == 2).astype(int)  # 1: Virginica, 0: others",
    "",
    "svm_clf = Pipeline([",
    "    ('scaler', StandardScaler()),",
    "    ('svc', SVC(kernel='linear', C=1.0, random_state=42)),",
    "])",
    "svm_clf.fit(X, y)",
    "",
    "svc = svm_clf.named_steps['svc']",
    "print(f'Training accuracy : {svm_clf.score(X, y):.4f}')",
    "print(f'Support vectors   : {svc.n_support_}')",
    "print(f'Margin width      : {2 / np.linalg.norm(svc.coef_[0]):.4f}')",
])

heading("4. 运行结果", level=2, size=11)
output_block([
    "Training accuracy : 0.9533",
    "Number of support vectors: [13 13] (class 0 / class 1)",
    "Decision function (scaled space): 2.0935*x1 + 2.4425*x2 + -2.8496 = 0",
    "Margin width (scaled space)     : 0.6217",
])
insert_figure(FIG_DIR / "Figure_7.png",
              "图1  实验2-4 线性SVM分类结果（实线为决策面，虚线为间隔边界，圆圈为支持向量）")

heading("5. 结果分析", level=2, size=11)
body(
    "线性 SVM 在标准化特征空间中找到了一条明确的分类超平面（黑色实线），并以虚线标出两侧等间隔边界。"
    "26 个支持向量（每类 13 个）完全决定了超平面的位置与方向。训练集准确率为 0.9533，"
    "模型已将绝大多数维吉尼亚鸢尾花与其他类别正确区分。少量误分类样本集中在两类特征重叠区域，"
    "符合软间隔 SVM 的预期行为——在容忍少量错误的前提下，最大化整体间隔宽度。",
    indent=True,
)

# ══════════════════════════════════════════════════════════════════════════════
# 二、实验 2-5 SVM 非线性数据分类（实验1）
# ══════════════════════════════════════════════════════════════════════════════
heading("二、实验 2-5：SVM 非线性数据分类（实验1）", size=13)

heading("1. 实验目的", level=2, size=11)
body(
    "使用 make_moons 生成的月牙形非线性数据集，对比线性 SVM 与 RBF 核 SVM 的分类效果，"
    "理解核函数在处理非线性问题中的作用。",
    indent=True,
)

heading("2. 实验原理", level=2, size=11)
body(
    "当数据在原始特征空间中线性不可分时，可通过核技巧（Kernel Trick）将样本映射到高维空间。"
    "径向基（RBF）核函数定义为：K(x_i, x_j) = exp(-γ||x_i - x_j||²)，"
    "其中 γ > 0 控制核函数的『影响范围』：γ 越大，决策边界越复杂；γ 越小，边界越平滑。"
    "RBF 核对应无穷维特征空间，可拟合任意复杂的决策边界，而不需要显式特征映射。",
    indent=True,
)

heading("3. 核心代码", level=2, size=11)
code_block([
    "from sklearn.datasets import make_moons",
    "from sklearn.svm import SVC",
    "from sklearn.pipeline import Pipeline",
    "from sklearn.preprocessing import StandardScaler",
    "",
    "X, y = make_moons(n_samples=200, noise=0.20, random_state=42)",
    "",
    "# 线性 SVM",
    "lin_clf = Pipeline([('scaler', StandardScaler()),",
    "                    ('svc', SVC(kernel='linear', C=1.0))])",
    "lin_clf.fit(X, y)",
    "",
    "# RBF 核 SVM",
    "rbf_clf = Pipeline([('scaler', StandardScaler()),",
    "                    ('svc', SVC(kernel='rbf', C=5.0, gamma=0.5))])",
    "rbf_clf.fit(X, y)",
    "",
    "print(f'Linear SVM accuracy : {lin_clf.score(X, y):.4f}')",
    "print(f'RBF SVM accuracy    : {rbf_clf.score(X, y):.4f}')",
])

heading("4. 运行结果", level=2, size=11)
output_block([
    "Linear SVM accuracy : 0.8300",
    "RBF SVM accuracy    : 0.9700",
])
insert_figure(FIG_DIR / "Figure_8.png",
              "图2  实验2-5 线性SVM（左）与RBF核SVM（右）在月牙形数据集上的决策边界",
              width=Inches(6.2))

heading("5. 结果分析", level=2, size=11)
body(
    "月牙形数据集由两条相互缠绕的弧形点云组成，线性 SVM 只能给出直线决策边界，准确率仅 0.8300，"
    "无法正确分割非线性分布。而 RBF 核 SVM 通过核函数将原始特征隐式映射到高维空间，"
    "学得了与数据分布吻合的弯曲决策边界，准确率提升至 0.9700。"
    "RBF 核的决策区域更好地包络了两类月牙区域，体现了核技巧在非线性分类中的显著优势。"
    "超参数 C=5、γ=0.5 在偏差与方差之间取得了较好平衡。",
    indent=True,
)

# ══════════════════════════════════════════════════════════════════════════════
# 三、实验 2-6 SVM 非线性数据分类（实验2）
# ══════════════════════════════════════════════════════════════════════════════
heading("三、实验 2-6：SVM 非线性数据分类（实验2）", size=13)

heading("1. 实验目的", level=2, size=11)
body(
    "以鸢尾花数据集中 Setosa 与 Versicolor 两类（花瓣长度和宽度特征）为例，"
    "对比线性核、多项式核（三次）和 RBF 核三种 SVM 的决策边界形态，"
    "理解不同核函数对分类结果的影响。",
    indent=True,
)

heading("2. 实验原理", level=2, size=11)
body(
    "多项式核函数定义为：K(x_i, x_j) = (γ·x_i^T·x_j + r)^d，"
    "其中 d 为次数，r 为偏置系数。三次多项式核（d=3）可以建模三次以内的非线性边界，"
    "计算复杂度低于 RBF 核，适用于特征维度已知且度数有明确含义的场景。"
    "本实验对同一数据集分别使用三种核函数，通过决策边界可视化直观比较各核函数的拟合能力。",
    indent=True,
)

heading("3. 核心代码", level=2, size=11)
code_block([
    "from sklearn import datasets",
    "from sklearn.svm import SVC",
    "from sklearn.pipeline import Pipeline",
    "from sklearn.preprocessing import StandardScaler",
    "",
    "iris = datasets.load_iris()",
    "X = iris['data'][:, (2, 3)]   # petal length, petal width",
    "y = iris['target']",
    "mask = y != 2                 # 只保留 Setosa(0) 与 Versicolor(1)",
    "X_bin, y_bin = X[mask], y[mask]",
    "",
    "kernels = {",
    "    'Linear  (C=1)':   SVC(kernel='linear', C=1),",
    "    'Poly deg3 (C=5)': SVC(kernel='poly', C=5, degree=3, coef0=1),",
    "    'RBF (C=5, g=2)':  SVC(kernel='rbf',  C=5, gamma=2),",
    "}",
    "for name, svc in kernels.items():",
    "    clf = Pipeline([('scaler', StandardScaler()), ('svc', svc)])",
    "    clf.fit(X_bin, y_bin)",
    "    print(f'{name:25s}  accuracy={clf.score(X_bin, y_bin):.4f}')",
])

heading("4. 运行结果", level=2, size=11)
output_block([
    "Linear  (C=1)              accuracy=1.0000  n_support=[2 2]",
    "Poly deg3 (C=5)            accuracy=1.0000  n_support=[2 2]",
    "RBF  (C=5, gamma=2)        accuracy=1.0000  n_support=[3 6]",
])
insert_figure(FIG_DIR / "Figure_9.png",
              "图3  实验2-6 三种核函数（线性、三次多项式、RBF）决策边界对比",
              width=Inches(6.4))

heading("5. 结果分析", level=2, size=11)
body(
    "Setosa 与 Versicolor 在花瓣特征空间中线性可分，三种核函数在训练集上均达到 100% 准确率。"
    "从决策边界形态来看：线性核给出一条直线，结构简单，仅需 2 个支持向量；"
    "三次多项式核生成稍微弯曲的决策面，但曲率提升不明显；"
    "RBF 核（γ=2）的决策边界更为局部化，支持向量数量增多（3+6），"
    "反映出对训练点邻域结构的更强依赖。实际应用中应优先考虑简单核并通过交叉验证选择超参数。",
    indent=True,
)

# ══════════════════════════════════════════════════════════════════════════════
# 四、实验总结
# ══════════════════════════════════════════════════════════════════════════════
heading("四、实验总结", size=13)
body(
    "通过实验 2-4 至 2-6，深入理解了支持向量机的核心原理与实践方法。"
    "实验 2-4 验证了线性 SVM 通过最大化间隔寻找最优决策超平面的思路，"
    "并展示了软间隔参数 C 在容忍误分类与增大间隔之间的权衡；"
    "实验 2-5 揭示了核技巧在非线性分类中的关键作用——RBF 核相较于线性核准确率提升 14 个百分点，"
    "直观说明了高维隐式映射的优势；"
    "实验 2-6 从多种核函数的横向比较出发，加深了对核函数选择与模型复杂度之间关系的认识。"
    "SVM 算法的优势在于理论完备（最大间隔与结构风险最小化）、核函数灵活，"
    "在小样本或高维场景下具有较强的竞争力。",
    indent=True,
)

# ── 保存 ─────────────────────────────────────────────────────────────────────
doc.save(str(OUT))
print(f"Word 文档已保存至: {OUT}")
