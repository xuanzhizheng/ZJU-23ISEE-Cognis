import kNN
import matplotlib.pyplot as plt
import matplotlib
import matplotlib.patches as mpatches

matplotlib.rcParams['font.sans-serif'] = ['SimHei']
matplotlib.rcParams['axes.unicode_minus'] = False

datingDataMat, datingLabels = kNN.file2matrix('datingTestSet2.txt')

# 1-不喜欢, 2-一般, 3-很喜欢
colors = {1: 'red', 2: 'green', 3: 'blue'}
c = [colors[l] for l in datingLabels]

legend_labels = [
    mpatches.Patch(color='red', label='不喜欢'),
    mpatches.Patch(color='green', label='一般'),
    mpatches.Patch(color='blue', label='很喜欢')
]

def draw_scatter(x, y, xlabel, ylabel, title):
    fig, ax = plt.subplots(figsize=(6, 5))
    ax.scatter(x, y, c=c, s=10)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    ax.set_title(title)
    ax.legend(handles=legend_labels)
    fig.tight_layout()

# 图像1: 飞行里程 vs 游戏时间百分比
draw_scatter(
    datingDataMat[:, 0],
    datingDataMat[:, 1],
    '每年飞行常客里程数',
    '玩视频游戏所耗时间百分比',
    '飞行里程 vs 游戏时间百分比'
)

# 图像2: 飞行里程 vs 冰淇淋消费
draw_scatter(
    datingDataMat[:, 0],
    datingDataMat[:, 2],
    '每年飞行常客里程数',
    '每周消费冰淇淋公升数',
    '飞行里程 vs 冰淇淋消费'
)

# 图像3: 游戏时间百分比 vs 冰淇淋消费
draw_scatter(
    datingDataMat[:, 1],
    datingDataMat[:, 2],
    '玩视频游戏所耗时间百分比',
    '每周消费冰淇淋公升数',
    '游戏时间百分比 vs 冰淇淋消费'
)

plt.show()
