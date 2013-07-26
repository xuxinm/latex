% Resume class (Minimalism style)
%
% Author      : Xuxin Ma <maa.xuxin@gmail.com>
% Last update : July 2013

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover}[2013/07/22 Simple cover letter class]

%% san-serif (helvetica)
\newcommand{\@fontsans}{%
\renewcommand*\familydefault{\sfdefault}%
}
%% serif (palatino)
\newcommand{\@fontroman}{%
\renewcommand*\familydefault{\rmdefault}%
\linespread{1.05}%
}

\DeclareOption{sans}{\@fontsans}
\DeclareOption{roman}{\@fontroman}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

%% margins (parameterize later)
\RequirePackage[hmargin={1.0in,1.0in},vmargin={.75in,.75in}]{geometry}

%% no page number
\RequirePackage{nopageno}

%% no indentation
\setlength{\parindent}{0pt}

%% fonts
\RequirePackage[T1]{fontenc}
\RequirePackage[scaled]{helvet}
\RequirePackage[sc]{mathpazo}
