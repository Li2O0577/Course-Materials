\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[a latex class for editing your assignment]

\LoadClass[11pt,letterpaper]{ctexart}

% ---------- XeLaTeX Chinese support ----------
\RequirePackage{iftex}
\ifXeTeX
  \RequirePackage{fontspec}
  \RequirePackage{xeCJK}
  \defaultfontfeatures{Ligatures=TeX}

  % Latin font (TeX Live default families)
%   \setmainfont{TeX Gyre Termes}
%   \setsansfont{TeX Gyre Heros}
%   \setmonofont{TeX Gyre Cursor}

  % CJK font (TeX Live usually ships Fandol)
%   \setCJKmainfont{FandolSong-Regular}
%   \setCJKsansfont{FandolHei-Regular}
%   \setCJKmonofont{FandolFang-Regular}

  % Better Chinese line breaking
  \XeTeXlinebreaklocale "zh"
  \XeTeXlinebreakskip = 0pt plus 1pt
\fi
% -------------------------------------------

\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{listings}
\RequirePackage{tcolorbox}
\RequirePackage{graphicx}
\RequirePackage{lmodern}
\RequirePackage{extarrows}

\setlength{\textwidth}{6.5in}
\setlength{\textheight}{10in}
\setlength{\oddsidemargin}{0in}
\setlength{\headheight}{0in}

% create a box to highlight word
\newtcbox{\hword}[1][orange]{on line, arc = 0.3mm,auto outer arc,colback = #1!12!, colframe = #1!60!,colupper = black, boxsep =0mm, left =0.3mm, right = 0.3mm, top =0.4mm, bottom = 0.4mm,boxrule =0.2mm, bottomrule =0.2mm, toprule = 0.2mm}

% default code style
\lstset{
    framerule=1pt,
    frame=tb,
    emphstyle={\small\ttfamily\bfseries\color{Orange}},
    numbers=left,
    numberstyle= \tiny\color{black},
    basicstyle = \small\ttfamily,
    keywordstyle    = \bfseries\color{BrickRed},
    identifierstyle = \bfseries\color{black},
    stringstyle     = \bfseries\color{ForestGreen},
    commentstyle    = \bfseries\color{Violet},
    breaklines      =   true,
    columns         =   fixed,
    basewidth       =   .5em,
    backgroundcolor=\color{Gray!5},
    tabsize=2,
    showspaces=false,
    showstringspaces=false,
}

% ---------- Math support (recommended) ----------
\RequirePackage{amsmath}   % align, gather, cases, etc.
\RequirePackage{amssymb}   % extra symbols
\RequirePackage{amsfonts}  % \mathbb
\RequirePackage{mathtools} % extensions/fixes over amsmath
\RequirePackage{amsthm}    % theorem environments (optional but common)
\RequirePackage{bm}        % \bm for bold math symbols
\RequirePackage{mathrsfs}  % \mathscr
\RequirePackage{extarrows}
\RequirePackage{graphicx}
\RequirePackage{svg}
% ----------------------------------------------

\RequirePackage[shortlabels]{enumitem}
\setlist[enumerate]{itemsep=0mm}

\newcommand{\bvec}[1]{
  \boldsymbol{#1}
}

\newcommand{\ct}{\mathsf{H}}
\newcommand{\diag}{\mathrm{diag}}
\newcommand{\im}{\mathrm{Im}}
\newcommand{\rank}{\mathrm{rank}}
\newcommand{\Span}{\mathrm{span}}

\newcommand{\assignmentTitle}[6]{
    \begin{flushleft}
    姓名：#1 \\
    学号：#2 \\
    日期：#3 \\
    课程：#5 \\
    编号：#6
    \end{flushleft}

    \begin{flushright}
      \vspace{-34mm}
      \includegraphics[height = 3cm]{#4}
      \hspace{5in}
    \end{flushright}

    % \noindent\rule{\linewidth}{2pt}
}