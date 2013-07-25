% Resume class (Minimalism style)
%
% Author      : Xuxin Ma <maa.xuxin@gmail.com>
% Last update : Jul 21 2013

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resmini}[2013/07/22 Minimalism resume]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[a4paper,twoside]{article}

%% borders
\usepackage{framed}

%% if/then/else
\usepackage{etoolbox}

%% symbols
\RequirePackage{marvosym}

%% tabularize
\RequirePackage{tabularx}

%% \DeclareOption{foo}{\@enablefoo}

%% margins (worry about parameter later)
\usepackage[hmargin={.75in,.75in},vmargin={.75in,.75in}]{geometry}

%% fonts
\usepackage[default]{cantarell}
\usepackage[T1]{fontenc}

%% colours
\usepackage{xcolor}
\definecolor{verylightgrey}{rgb}{0.85,0.85,0.85}
\definecolor{lightgrey}{rgb}{0.5,0.5,0.5}
\definecolor{darkgrey}{rgb}{0.3,0.3,0.3}

%% figures
\usepackage[pdftex]{graphicx}

%% disable page styles
\usepackage{nopageno}
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
%% summary
\newcommand*{\summary}[1]{\def\@summary{#1}}

%% footer
%% \newcommand{\text@foot}[1]{\so{\mbox{\textsc{\textrm{#1}}}}}
%% \cofoot{%
%% \text@foot{\@addr}\\%
%% \text@foot{{\Large\Telefon} \@phone~~~{\Large\Letter} \@email}%
%% }

%% make title 
\newcommand{\restitle}{%
\begin{minipage}{\textwidth} %% ??? vertical alignment
%% left half
\begin{minipage}{.45\textwidth}
\raggedright%
\ifdefempty{\@name}{\relax}{\huge\textsc{\@name}\\}
\vspace{5pt}
\ifdefempty{\@subname}{\relax}{\normalsize\@subname}
\end{minipage}
\hfill
%% right half
\begin{minipage}{.45\textwidth}
\raggedleft%
\ifdefempty{\@addr}{\relax}{\textsc{\@addr}\\}
\vspace{5pt}
\ifdefempty{\@phone}{\relax}{\Telefon~~\@phone\\}
\ifdefempty{\@email}{\relax}{\Letter~~\@email}
\end{minipage}
\vspace{10pt}
\end{minipage}
%% closing bar
\rule{\linewidth}{1pt}
}

%% make summary
\newcommand{\ressummary}{%
\begin{minipage}{\textwidth}
\vspace{8pt}
\@summary
\vspace{8pt}
\end{minipage}
%% closing bar
\rule{\linewidth}{1pt}
}

%% resume section
\newcommand{\ressection}[1]{%
\raggedright\textsc{\Large #1}%
\vspace{\baselineskip}%
}
%% \rule{\linewidth}{1pt}%
