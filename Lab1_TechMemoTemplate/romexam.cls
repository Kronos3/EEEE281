\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{romexam}[2014/09/15]

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Process Options %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\DeclareOption{exam}{
	\AtEndOfClass{\chead{Exam \@examnum}}
	\AtEndOfClass{\rhead{\@instructor\\\@date}}
}
\DeclareOption{homework}{
	\AtEndOfClass{\chead{Homework \@hwnum}}
	\AtEndOfClass{\rhead{\@instructor\\Due: \@due}}
}
\DeclareOption{quiz}{
	\AtEndOfClass{\chead{Quiz \@quiznum}}
	\AtEndOfClass{\rhead{\@instructor\\\@date}}
}
\DeclareOption{namefield}{
	\AtBeginDocument{
			\noindent\makebox[20em]{Name:\enspace\hrulefill}\\
			\\
                      %  \noindent\makebox[20em]{Person to Your Left:\enspace\hrulefill}
                      %  \noindent\makebox[20em]{Person to Your Right:\enspace\hrulefill}
	}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}

\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Load Base Class %%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass{exam}


%%%%%%%%%%%%%%%%%%%%
%%%%% Do Stuff %%%%%
%%%%%%%%%%%%%%%%%%%%
% Set up headers and footers
\pagestyle{headandfoot}

% Header commands
\newcommand{\@examnum}{}
\newcommand{\examnumber}[1]{\renewcommand{\@examnum}{#1}}
\newcommand{\@quiznum}{}
\newcommand{\quiznumber}[1]{\renewcommand{\@quiznum}{#1}}
\newcommand{\@hwnum}{}
\newcommand{\hwnumber}[1]{\renewcommand{\@hwnum}{#1}}
\newcommand{\@due}{}
\newcommand{\due}[1]{\renewcommand{\@due}{#1}}
\newcommand{\@instructor}{}
\newcommand{\instructor}[1]{\renewcommand{\@instructor}{#1}}
\newcommand{\@classname}{}
\newcommand{\classname}[1]{\renewcommand{\@classname}{#1}}

% Make partial header and footer
\lhead{\@classname}
\cfoot{Rochester Institute of Technology}
\rfoot{Page \thepage{} of \numpages}

% Disable the framing of solutions by default
\unframedsolutions

% Turn on some horizontal rules
\headrule
\footrule

% Done
\endinput