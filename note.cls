% note.cls
% a extremely simple note template

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2020/12/12 A extremely simple LaTeX note template]

\LoadClass[a4paper]{ctexart}

% \setmainfont{Times New Roman}
% \setsansfont{Arial}
% \setmonofont{Courier New}

\CTEXsetup[format={\raggedright\Large\bfseries}]{section}
\RequirePackage{geometry}
\geometry{top=2.5cm, bottom=2.5cm, left=2.5cm, right=2.5cm}

\RequirePackage{fancyhdr}
\AtBeginDocument{
    \makeatletter
    \let\runtitle\@title
    \let\runauthor\@author
    \makeatother

    \lhead{}
    \chead{\runtitle}
    \rhead{}
    \lfoot{}
    \cfoot{\thepage}
    \rfoot{}
    \pagestyle{fancy}
}

\RequirePackage{amsmath}
\RequirePackage{amsfonts}

\RequirePackage{graphicx}
\RequirePackage{array}
\RequirePackage{booktabs}

\RequirePackage{listings}
\lstdefinestyle{notestyle}{
    aboveskip=\baselineskip,
    belowskip=\baselineskip,
    frame=tb,
    basicstyle=\ttfamily,
    numbers=left,
    breaklines=true,
    breakatwhitespace=true,
}
\lstset{style=notestyle}
\lstnewenvironment{texcodesample}{\lstset{language=[LaTeX]TeX}}{}