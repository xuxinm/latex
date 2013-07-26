% Resume class (Minimalism style)
%
% Author      : Xuxin Ma <maa.xuxin@gmail.com>
% Last update : July 2013

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2013/07/22 Simple resume class]

%% san-serif (helvetica)
\newcommand{\@fontsans}{%
\renewcommand*\familydefault{\sfdefault}%
}
%% serif (palatino)
\newcommand{\@fontroman}{%
\renewcommand*\familydefault{\rmdefault}%
%% \linespread{1.05}% Palatino needs slightly more line spacing
}

\DeclareOption{sans}{\@fontsans}
\DeclareOption{roman}{\@fontroman}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

%% borders
\RequirePackage{framed}

%% if/then/else
\RequirePackage{etoolbox}

%% symbols
\RequirePackage{marvosym}

%% margins (parameterize later)
\RequirePackage[hmargin={.75in,.75in},vmargin={.75in,.75in}]{geometry}

%% no page number
\RequirePackage{nopageno}

%% no indentation
\setlength{\parindent}{0pt}

%% fonts
%% fonts
\RequirePackage[T1]{fontenc}
\RequirePackage[scaled]{helvet}
\RequirePackage[sc]{mathpazo}

%% colours
\RequirePackage[svgnames]{xcolor}
\definecolor{sectionshade}{gray}{.85}

%% tabularize
\RequirePackage{tabularx}
\newcommand\VRule{\color{gray}\vrule width 1pt}

%% figures
\RequirePackage[pdftex]{graphicx}

%% reduce itemize line spacing
\RequirePackage{enumitem}
\setlist{listsep=.1em}
\setlist{topsep=.1em}
\setlist{itemsep=.2em}

%% name
\newcommand*{\name}[1]{\def\@name{#1}}
%% short text below name
\newcommand*{\subname}[1]{\def\@subname{#1}}
%% address, email, tel
\newcommand*{\addr}[1]{\def\@addr{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}

%% make title 
%% Need to improve vertical adjustment
\newcommand{\restitle}{%
\begin{minipage}{\textwidth}
%% left half
\begin{minipage}[b]{.45\textwidth}
\raggedright%
\ifdefempty{\@name}{\relax}{\Huge\textbf{\textsc{\@name}}\\[.5em]}
\ifdefempty{\@subname}{\relax}{\normalsize\@subname}
\vspace{0pt}
\end{minipage}
\hfill
%% right half
\begin{minipage}[b]{.45\textwidth}
\raggedleft%
\ifdefempty{\@addr}{\relax}{\textsc{\@addr}\\[.2em]}
\ifdefempty{\@phone}{\relax}{\Telefon~~\@phone\\}
\ifdefempty{\@email}{\relax}{\Letter~~\@email}
\vspace{0pt}
\end{minipage}
\vspace{1em}
\end{minipage}
%% closing bar
\rule{\linewidth}{1pt}
}

%% make summary paragraph
\newcommand{\ressummary}[1]{%
\begin{minipage}{\textwidth}
\vspace{1em}#1\vspace{1em}
\end{minipage}
%% closing bar
\rule{\linewidth}{1pt}
}

%% text box, shaded, framed
%% needs to be improved
\newenvironment{resshaded}{%
  \def\FrameCommand{\fboxsep=\FrameSep \fcolorbox{black}{sectionshade}}%
  \color{black}\MakeFramed {\FrameRestore}}%
 {\endMakeFramed}

%% make section title
\newcommand{\ressection}[1]{%
\vspace{-.5em}
\begin{resshaded}
\raggedright\large\textbf{\textsc{#1}}%
\end{resshaded}
\vspace{-.5em}
}

%% two-column style entry-by-entry list
%% (column 1) (bar) (column 2)
%% #1 = width of column 1
%% #2 = width of column 2
\newenvironment{resentry}[2]{%
%% right-left alignment
%% \begin{tabular}{>{\raggedleft}p{#1}!{\VRule}p{#2}}}{%
%% left-left alignment
\begin{tabular}{>{\raggedright}p{#1}!{\VRule}p{#2}}}{%
\end{tabular}}

%% Experience/Education entry
%% #1 = position/degree
%% #2 = name of company/institute
%% #3 = time
%% #4 = location
\newcommand{\resexp}[4]{%
{#1}\hfill{#3}\\[.2em]
{#2}\hfill{#4}\\
\vspace{-1em}
%% closing bar
%% \rule{\linewidth}{.5pt}
}
