% Yet Another Latex CV Template
% https://github.com/sdahdah/yalcv
%
% Steven Dahdah, 2019-08-02

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yalcv}[Yet Another LaTeX CV Template]

\LoadClass[letterpaper, 11pt]{article}

\RequirePackage[top=0.75in, bottom=0.75in, left=0.75in, right=0.75in]{geometry}
\RequirePackage{fontawesome}      % \faXxx{} icons
\RequirePackage{titlesec}         % \titleformat{}
\RequirePackage{tabularx}         % \begin{tabularx}
\RequirePackage{parskip}          % Gets rid of leading indentation
\RequirePackage[pdftex,colorlinks]{hyperref} % \href{}
\RequirePackage{amsmath}          % \boldsymbol{}
\hypersetup{hidelinks=true}

\renewcommand\labelitemi{$\boldsymbol{\cdot}$}

\pagenumbering{gobble} % Disable page numbering

\titleformat{\section}
    {\normalfont\Large\bfseries}
    {\thesection}{1em}
    {}
    [{\titlerule[0.8pt]}]

\newcommand{\cvheader}[5]{%
    \begin{tabularx}{\textwidth}{lXl}
        \textbf{\Huge #1} & & \\[1ex]
        \faHome{} #2 & & \faLinkedin{} \href{https://www.#3}{#3} \\
        \faPhone{} #4 & & \faEnvelope{} \href{mailto:#5}{#5}
    \end{tabularx}%
}

\newenvironment{cvschool}[2]{%
    \begin{tabularx}{\textwidth}{lXr}
        \textbf{#1} & & #2
    \end{tabularx}%
}{%
}

\newenvironment{cvdegree}[2]{%
    \begin{tabularx}{\textwidth}{lXr}
        \textit{#1} & & \textit{#2}
    \end{tabularx}%
    \vspace{-1ex}
    \begin{itemize}
        \itemsep-1ex
}{%
    \end{itemize}
}

\newenvironment{cvjob}[2]{%
    \begin{tabularx}{\textwidth}{lXr}
        \textbf{#1} & & #2
    \end{tabularx}%
}{%
}

\newenvironment{cvposition}[2]{%
    \begin{tabularx}{\textwidth}{lXr}
        \textit{#1} & & \textit{#2}
    \end{tabularx}%
    \vspace{-1ex}
    \begin{itemize}
        \itemsep-1ex
}{%
    \end{itemize}
}

\newcommand{\cvaward}[4]{%
    \begin{tabularx}{\textwidth}{Xr}
        \textbf{#1} & #3 \\
        \textit{#4} & \textit{#2}
    \end{tabularx}%
    \vspace{1ex} \\
}

\newenvironment{cvskills}[0]{%
    \tabularx{\textwidth}{lX}%
}{%
    \endtabularx{}%
}

\newcommand{\cvskill}[2]{%
    \textbf{#1} & #2 \vspace{1ex} \\
}

\newenvironment{cvcourses}[0]{%
    \tabularx{\textwidth}{llX}%
}{%
    \endtabularx{}%
}

\newcommand{\cvcourse}[3]{%
    \textbf{#1} & #2 & #3 \vspace{1ex} \\
}

\newenvironment{cvpublications}[0]{%
    \tabularx{\textwidth}{lX}%
}{%
    \endtabularx{}%
}

\newcommand{\cvpublication}[2]{%
    #1 & #2 \vspace{1ex} \\
}
