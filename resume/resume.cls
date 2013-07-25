% Resume class (Minimalism style)
%
% Author      : Xuxin Ma <maa.xuxin@gmail.com>
% Last update : Jul 21 2013

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2013/07/22 Resume class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[a4paper,twoside]{article}

%% borders
\usepackage{framed}

%% if/then/else
\usepackage{etoolbox}

%% symbols
\usepackage{marvosym}

%% margins (parameterize later)
\usepackage[hmargin={.75in,.75in},vmargin={.75in,.75in}]{geometry}

%% fonts
%% \usepackage[default]{cantarell}
%% \usepackage[T1]{fontenc}

%% colours
\usepackage[svgnames]{xcolor}
\definecolor{sectionshade}{gray}{.85}

%% tabularize
\usepackage{tabularx}
\newcommand\VRule{\color{gray}\vrule width 1pt}

%% figures
\usepackage[pdftex]{graphicx}

%% no page number
\usepackage{nopageno}
%% no page styles
\pagestyle{plain}
%% no indentation
\setlength{\parindent}{0pt}

%% name
\newcommand*{\name}[1]{\def\@name{#1}}
%% short text below name
\newcommand*{\subname}[1]{\def\@subname{#1}}
%% address, email, tel
\newcommand*{\addr}[1]{\def\@addr{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}

%% footer
%% \newcommand{\text@foot}[1]{\so{\mbox{\textsc{\textrm{#1}}}}}
%% \cofoot{%
%% \text@foot{\@addr}\\%
%% \text@foot{{\Large\Telefon} \@phone~~~{\Large\Letter} \@email}%
%% }

%% make title 
%% Need to improve vertical adjustment
\newcommand{\restitle}{%
\begin{minipage}[ht]{\textwidth}
%% left half
\begin{minipage}[ht]{.45\textwidth}
\raggedright%
\ifdefempty{\@name}{\relax}{\Huge\textbf{\textsc{\@name}}\\[.5em]}
\ifdefempty{\@subname}{\relax}{\normalsize\@subname}
\end{minipage}
\hfill
%% right half
\begin{minipage}[ht]{.45\textwidth}
\raggedleft%
\ifdefempty{\@addr}{\relax}{\textsc{\@addr}\\[1em]}
\ifdefempty{\@phone}{\relax}{\Telefon~~\@phone\\}
\ifdefempty{\@email}{\relax}{\Letter~~\@email}
\end{minipage}
\vspace{2em}
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
\begin{resshaded}
\raggedright\Large\textbf{\textsc{#1}}%
\end{resshaded}
}

%% two-column style entry-by-entry list
%% (column 1) (bar) (column 2)
%% #1 = width of column 1
%% #2 = width of column 2
\newenvironment{resentry}[2]{%
\begin{tabular}{>{\raggedleft}p{#1}!{\VRule}p{#2}}}{%
\end{tabular}}

%% \rule{\linewidth}{1pt}%
