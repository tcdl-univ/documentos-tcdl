%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% File: wlemph.cls                  
% Version: 1.0                      
% Date: 03 Dec 2014                 
%                                                     
% This class file is provided for authors         
% submitting to the OUP EMPH journal      
% http://emph.oxfordjournals.org/    				  
%                                                     
% Produced by Overleaf (WriteLaTeX)						  
%													  
% Copyright 2014 Oxford University Press       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either
% version 1.3 of this license or any later version.
% The latest version of this license is in
% http://www.latex-project.org/lppl.txt and
% version 1.3 or later is part of all distributions
% of LaTeX version 2005/12/01 or later.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Based on the SelfArx document class.
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wlemph}[23/01/2014, v1.0]
\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}

\RequirePackage{ifthen}
\RequirePackage{calc}
\AtEndOfClass{\RequirePackage{microtype}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass{article}
\RequirePackage{ifpdf}

\RequirePackage[utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}

\RequirePackage{graphicx,xcolor}
\RequirePackage{booktabs}
\RequirePackage{authblk}
\makeatletter
\renewcommand\AB@affilsepx{, \protect\Affilfont}
\makeatother

\RequirePackage[left=1.9cm,%
                right=1.3cm,%
                top=0.28cm,%
                bottom=2.25cm,%
                headheight=12pt,%
                letterpaper]{geometry}%
                
\RequirePackage[labelfont={bf,sf},%
                labelsep=period,%
                font={color=color1},%
                justification=raggedright,%
                singlelinecheck=false]{caption}

\RequirePackage{url}
\RequirePackage[colorlinks=true, allcolors=color1]{hyperref}

\RequirePackage[numbers]{natbib}
\bibliographystyle{abbrvnatemph}

%
% Package to enable absolute positioning of figures
%
\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{60mm}
\setlength{\TPVertModule}{30mm}
\textblockorigin{20mm}{10mm} % start everything near the top-left corner
                
\pagestyle{empty}

%
% section/subsection/paragraph set-up
%
\RequirePackage[explicit]{titlesec}
\titleformat{\section}
  {\color{color1}\sffamily\bfseries}
  {\thesection}
  {0em}
  {#1}
\titleformat{name=\section,numberless}
  {\color{color1}\fontsize{11}{18}\sffamily\bfseries\selectfont}
  {}
  {0em}
  {#1}
\titleformat{\subsection}
  {\sffamily\bfseries}
  {\thesubsection}
  {0.5em}
  {#1}
\titleformat{\subsubsection}
  {\sffamily\small\bfseries\itshape}
  {\thesubsubsection}
  {0.5em}
  {#1}
\titleformat{\paragraph}[runin]
  {\sffamily\small\bfseries}
  {\theparagraph}
  {0em}
  {} 
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{2.5ex \@plus3pt \@minus2pt}{0pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{0pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{10pt}

\RequirePackage{enumitem}
%\setlist{nolistsep} % Uncomment to remove spacing between items in lists (enumerate, itemize)

% Remove brackets from numbering in List of References
\renewcommand{\@biblabel}[1]{#1.}

% Header
\newcommand\emphheader{Técnicas de Construcción de Lenguajes}

% custom title page 
%
\renewcommand{\@maketitle}{%
{%
\noindent\makebox[\linewidth]{\color{color2}\rule{1.2\paperwidth}{0.4pt}}
\noindent\begin{minipage}[t]{0.67\linewidth}
\vskip5pt
{\raggedright\fontsize{8}{10}\selectfont\noindent\emphheader\par}%
\vskip2pt
{\raggedright\color{color1}\fontsize{26}{28}\selectfont \@title\par}%
\vskip12pt
{\raggedright\fontsize{12}{14}\selectfont  \@author\par}
\vspace{6pt}%
\end{minipage}
%
\begin{minipage}[t]{0.33\linewidth}
\vspace{-12pt}
\centering
\includegraphics[width=\linewidth]{logo-con-margenes.jpg}\\
\end{minipage}
\noindent\makebox[\linewidth]{\color{color2}\rule{1.2\paperwidth}{0.4pt}}
\vskip4pt%
}%
}%
%-----------------------------------------------

\definecolor{color1}{RGB}{42,45,108} % Blue; used for headings and citations
\definecolor{color2}{RGB}{39,180,96} % Green; used for horizontal rules
\definecolor{color3}{RGB}{254,190,42} % Yellow: for reference (not currently used)


% Author and affiliation style settings
\renewcommand\Authfont{\fontsize{12}{12}\usefont{OT1}{phv}{m}{n}}
\renewcommand\Affilfont{\fontsize{7}{9}\usefont{OT1}{phv}{m}{n}}
\setlength{\affilsep}{0.1em}

% References font size
\renewcommand*{\bibfont}{\fontsize{8}{9}\selectfont}

% Font family setting
\renewcommand{\familydefault}{\sfdefault}

% Support for figures uploaded in .tif format
\usepackage{epstopdf}
\epstopdfDeclareGraphicsRule{.tif}{png}{.png}{convert #1 \OutputFile}
\AppendGraphicsExtensions{.tif}