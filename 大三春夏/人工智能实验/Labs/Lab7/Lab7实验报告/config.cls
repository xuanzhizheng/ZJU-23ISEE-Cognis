\ProvidesClass{config}
\LoadClass{article}

\RequirePackage{xeCJK}
\RequirePackage{hyperref}
\RequirePackage{CJKnumb}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
% \RequirePackage{xcolor}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
% \RequirePackage{everypage-1x}

\RequirePackage{listings}  % 排版代码用
\RequirePackage{fontspec}  % 调字体的
% \setmonofont{Consolas}     % 为了引入代码consolas字体
\RequirePackage{ulem}      % 删除线、下划线
\RequirePackage{booktabs}  % 画三线表
% \RequirePackage{subfigure} 
\RequirePackage{titletoc}  % 调整目录用
\RequirePackage{cite}      % 引用参考文献
\RequirePackage{zhlipsum}
\RequirePackage[dvipsnames]{xcolor} % 提供颜色设置的功能，
\RequirePackage{minted}
\RequirePackage{setspace}


%-------------------------全局设置------------------------------%
\linespread{1.2}
\newgeometry{top=2.54cm,bottom=2.54cm,left=2.54cm,right=1.5cm}  
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\CJKnumber{\arabic{section}}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{(\arabic{subsubsection})}
\setlist[enumerate]{label=(\arabic*)}

\graphicspath{{./figures/}{figures/}{figure/}{pictures/}
{picture/}{pic/}{pics/}{image/}{images/}} % 指定图片所在文件夹  

\setCJKmainfont{simsun.ttc}[BoldFont = simsunBold.otf]
\setCJKmonofont{simsun.ttc}
\setCJKsansfont{simsun.ttc}
% \titleformat{\section}%定义标题类型和标题样式，字体
%   {\fontsize{15.75pt}\textbf\heiti\centering}%定义标题格式:字号（大小），加粗，斜体
%   {}%定义标题的标签，即标题的标号等
%   {0em}%定义标题和标号之间的水平距离
%   {} %定义标题前的内容
%   [] %定义标题后的内容
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize}
\titlespacing{\subsection}{1em}{*4}{*1.5}

% 页眉
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} % 去页眉线
\lhead{实验名称：\@expname}
\chead{姓名：\@name}
\rhead{学号：\@stuid}

% 下划线定义
\def\zjuu[#1]#2{
  \underline{\hbox to #1{\hfil#2\hfil}}}

\hypersetup{
	colorlinks=true,
	linkcolor=cyan,
	filecolor=blue,      
	urlcolor=blue,
	citecolor=green,
}
%-------------------------信息设置------------------------------%
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\lab[1]{\def\@lab{#1}}
\newcommand\course[1]{\def\@course{#1}}
\newcommand\instructor[1]{\def\@instructor{#1}}
\newcommand\grades[1]{\def\@grades{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\exptype[1]{\def\@exptype{#1}}
\newcommand\partner[1]{\def\@partner{#1}}

\newcolumntype{L}[1]{>{\raggedright\arraybackslash}p{#1}} % 我新增加的格式
\newcolumntype{C}[1]{>{\centering\arraybackslash}p{#1}}   % 我新增加的格式
\newcolumntype{R}[1]{>{\raggedleft\arraybackslash}p{#1}}  % 我新增加的格式

\RequirePackage{framed}
\definecolor{shadecolor}{RGB}{241, 241, 255}
% \newtheorem{problem}{Question.}[section]
\newcounter{problemname}
\newenvironment{problem}{\begin{shaded}\stepcounter{problemname}\par\noindent\textbf{Question.\arabic{problemname}. }}{\end{shaded}\par}
\newenvironment{solution}{\par\noindent\textbf{解答.}}{\par}
%-------------------------代码设置------------------------------%
\lstset{
    language=Tex, % 设置语言
    basicstyle=\ttfamily, % 设置字体族
    breaklines=true, % 自动换行
    keywordstyle=\bfseries\color{NavyBlue}, % 设置关键字为粗体，颜色为 NavyBlue
    morekeywords={}, % 设置更多的关键字，用逗号分隔
    emph={self}, % 指定强调词，如果有多个，用逗号隔开
    emphstyle=\bfseries\color{Rhodamine}, % 强调词样式设置
    commentstyle=\itshape\color{black!50!white}, % 设置注释样式，斜体，浅灰色
    stringstyle=\bfseries\color{PineGreen!90!black}, % 设置字符串样式
    columns=flexible,
    numbers=left, % 显示行号在左边
    numbersep=1em, % 设置行号的具体位置
    numberstyle=\footnotesize, % 缩小行号
    frame=shadowbox, % 边框
    rulesepcolor=\color{red!20!green!20!blue!20}, 
    % framesep=1em % 设置代码与边框的距离
    showspaces=false,               % show spaces adding particular underscores
    showstringspaces=false,         % underline spaces within strings
    showtabs=false                 % show tabs within strings adding particular underscores
}

%-------------------------封面设置------------------------------%
\newcommand{\maketitlepage}{% 封面
    \backgroundsetup{contents={}}
    \begin{titlepage}  
       \vspace*{-3cm}  
          
        \begin{figure}[h]  
            \centering  
            \includegraphics[width=0.65\linewidth]{figures/char.png}  
        \end{figure}  
          
        \begin{figure}[h]  
            \centering  
            \includegraphics[width=0.48\linewidth]{logo.png}  
        \end{figure}  
        \vspace{-0.5cm}  
        \begin{center}  
            \Huge{\textbf{\@course}\\  
            \textbf{实验报告}}  
        \end{center}  
        \vspace*{0.5cm}  
        \begin{center}  
            \Large  
            实验名称\ \ \underline{\makebox[220pt]{\@expname}} \\   
            \vspace{0.3cm}  
            实验地点\ \ \underline{\makebox[220pt]{\@lab}}\\  
            \vspace{0.3cm}  
            \quad\ 姓\; 名 \ \ \underline{\makebox[220pt]{\@name}}\\  
            \vspace{0.3cm}  
            \quad\ 学\; 号\ \ \underline{\makebox[220pt]{\@stuid}}\\  
            \vspace{0.3cm}  
            实验日期\ \ \underline{\makebox[220pt]{\today}}\\  
            \vspace{0.3cm}  
            指导老师\ \ \underline{\makebox[220pt]{\@instructor}}\\  
        \end{center}  
    \end{titlepage}  
}

%-------------------------首页头部------------------------------%
\newcommand{\makeheader}{
\restoregeometry
\dashline
\begin{figure}[h]
  \begin{minipage}{0.7\linewidth}
    \centerline{\includegraphics[width=\linewidth]{head.jpg}}
  \end{minipage}
  \hfill
  \begin{minipage}{.3\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{ll}
      专业： & \zjuu[70pt]\@major   \\
      姓名： & \zjuu[70pt]\@name    \\
      学号： & \zjuu[70pt]\@stuid   \\
      日期： & \zjuu[70pt]\@date    \\
      地点： & \zjuu[70pt]\@lab
    \end{tabular*}
  \end{minipage}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \zjuu[120pt]    \@course       &
    指导老师： & \zjuu[90pt]     \@instructor   & 
    实验类型： & \zjuu[75pt]     \@exptype      \\
    实验名称： & \zjuu[120pt]    \@expname      & 
    成 \quad 绩：    & \zjuu[90pt]      \@grades      & 
    签 \quad 名：    & \zjuu[75pt]      \@partner
  \end{tabular*}
\end{table}
\thispagestyle{plain}
\setcounter{page}{1}
}

%-------------------------目录设置------------------------------%
\newcommand{\maketoc}{%  
    \newpage  
    \begin{doublespace}
        \tableofcontents  
        \thispagestyle{empty} % Removes the page numbering.  
    \end{doublespace}
    \newpage  
    \pagenumbering{arabic} % 重新开始标号，阿拉伯数字形式  
}  


%-------------------------装订设置------------------------------%
% %把装订线作为背景,里面所有的排版是针对整个paper而言
\RequirePackage{background}
\RequirePackage{dashrule}	%虚线包

\newcommand{\dashline}{
%因为没找到直接的竖直虚线，所以采用了水平虚线，然后旋转90度的方法
\SetBgScale{1}
\SetBgAngle{90}	%旋转了90度
\SetBgColor{black}
\SetBgContents{\hdashrule[0.5ex][x]{0.4\paperheight}{1pt}{1pt}\quad 装\quad 订\quad 线 \quad \hdashrule[0.5ex][x]{0.4\paperheight}{1pt}{1pt}}
\SetBgHshift{0cm}		%背景的水平位移
\SetBgVshift{9.08cm}	
% 	%背景的竖直位移(根据页面大小，距离中心的距离，比如：a4页面是29.7cm*21cm，宽为21cm，那如果要把虚线打到距离左边0.5cm,所以要写(10.5-0.5)cm=10cm)
}
