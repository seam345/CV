
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2011/03/26 My custom CV class]
\LoadClass{article}

%\usepackage[showframe]{geometry}
\usepackage{layout}
\setlength{\voffset}{-0.75in}
\setlength{\headsep}{5pt}
\setlength{\textheight}{700pt}
%\setlength{\footskip}{0pt}

\RequirePackage{titlesec}

\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

\newcommand{\contactInfo}[5]
{
	\begin{center}
	  \large{#1}\\
	  \begin{tabular}{l l} 
	    \large{Mob:} & \large{#2} \\
	    %\large{Home:} & \large{#3} 
	  \end{tabular}\\
	  \large{#4}\\
    \large{#5}\\
	\end{center} 
}

\newcommand{\workDetails}[5]
{
%	\subsection{\textbf{#1 \hfill #5\\#2 \hfill (#3)\\#4}}
%	\subsection{\textbf{#1 \hfill #5\\#2 \hfill (#3)}} %  company first
	\subsection{\textbf{#2 \hfill #5\\#1 \hfill (#3)}} %  position first
}


\newcommand{\educationDetails}[3]
{
	\subsection{\textbf{#1 \hfill #3\\#2}}
}
\newcommand{\experianceDetails}[5]
{
%	\subsection{\textbf{#1 \hfill #5\\#2 \hfill (#3)\\#4}}
	\subsection{\textbf{#2 \hfill #5\\#1 \hfill #3}} 
%	\subsection{\textbf{#2 \hfill #5\\#1 }} 
}


%sall change this to something else and add a comand that adds skills
\makeatletter % we need to use kernel commands
\newcommand{\workdetails}
{%
  \begin{itemize}
  \@workdetailsi
}

\newcommand\@workdetailsi
{
  \@ifnextchar\stopworkdetails{\@workdetailsend}{\@workdetailsii}
}

\newcommand\@workdetailsii[1]
{%
  \item #1
  \@workdetailsi % restart the recursion
}

\newcommand\@workdetailsend[1]
{% The argument is \stopworkdetails
  \end{itemize}
}
\makeatother














\def\testwords#1{%
    \begingroup
    \edef\@tempa{#1\space}%
    \expandafter\endgroup
    \expandafter\readwords\@tempa\relax
}
\def\readwords#1 #2\relax{%
      \doword{#1}%  #1 = substr, #2 = rest of string
      \begingroup
      \ifx\relax#2\relax  % is #2 empty?
         \def\next{\endgroup\endtestwords}% your own end-macro if required
      \else
         \def\next{\endgroup\readwords#2\relax}%
      \fi
      \next
}
\def\doword#1{(#1)}
\def\endtestwords{}


























\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\normalsize\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}


\newcommand{\contact}[5]{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4 \ {\Large} #5
}



\newcommand{\workitems}[3]{
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}
}