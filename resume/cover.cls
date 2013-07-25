\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover}[2013/07/22 Cover letter class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass[12pt,a4paper,twoside]{article}

%% margins (parameterize later)
\usepackage[hmargin={1.0in,1.0in},vmargin={.75in,.75in}]{geometry}

%% no page number
\usepackage{nopageno}

%% no indentation
\setlength{\parindent}{0pt}
