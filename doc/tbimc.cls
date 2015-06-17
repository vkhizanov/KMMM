%%
%% LaTeX documentclass for the journal
%% ����� ����������� �� ����������� ����������
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<�������������>%
\NeedsTeXFormat{LaTeX2e}
	[1994/12/01]
\ProvidesClass{tbimc}
	[2004/03/31 v1.0471 TBIMC Author Class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<��������� ��������� ���>%
% Define commands for project definition file

% Process page number as a global counter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<���������� �����>%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<���������� �����>%
\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%<�������� �������>%
\RequirePackage[T2A]{fontenc}
\RequirePackage[cp1251]{inputenc}
\RequirePackage[english,russian,ukrainian]{babel}

\LoadClass[reqno]{amsart}[1999/11/24]

\RequirePackage{amssymb}

\textwidth=32pc
\textheight=52.5pc
\calclayout

%% Change text "and" to \andname
\addto\extrasukrainian{\renewcommand{\andify}{%
  \nxandlist{\unskip, }{\unskip{} \andname~}{\unskip{} \andname~}}}
\addto\extrasrussian{\renewcommand{\andify}{%
  \nxandlist{\unskip, }{\unskip{} \andname~}{\unskip{} \andname~}}}
\addto\extrasenglish{\renewcommand{\andify}{%
  \nxandlist{\unskip, }{\unskip{} \andname~}{\unskip, \andname~}}}

%% Some translations for captions
\addto\captionsukrainian{%
	\def\UDCname{���}%
	\def\keywordsname{������ ����� � �����}%
	\def\datename{�������}%
	\def\curraddrname{������� ������}%
	\def\emailname{������ ���������� �����}%
	\def\andname{��}%
}
\addto\captionsrussian{%
	\def\UDCname{���}%
	\def\keywordsname{�������� ����� � �����}%
	\def\datename{���������}%
	\def\curraddrname{������� �����}%
	\def\emailname{����� ����������� �����}%
	\def\andname{�}%
}
\addto\captionsenglish{%
	\def\UDCname{UDC}%
	\def\keywordsname{Key words and phrases}%
	\def\datename{Received}%
	\def\curraddrname{Current address}%
	\def\emailname{E-mail address}%
	\def\andname{and}%
}

%% Default language
\selectlanguage{ukrainian}

%% Set lower and upper case for Ukrainian letters in cp1251 encoding
\uccode`\�=`\�	\lccode`\�=`\�
\uccode`\�=`\�	\lccode`\�=`\�
\uccode`\�=`\�	\lccode`\�=`\�
\uccode`\�=`\�	\lccode`\�=`\�
%%

%% Set margins
\setlength{\oddsidemargin}{0pt}
\setlength{\evensidemargin}{0pt}
\setlength{\topmargin}{-2pt}
\addtolength{\textheight}{10pt}

%% Sider

%%
\endinput