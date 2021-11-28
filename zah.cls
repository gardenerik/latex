\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zah}

\LoadClass[12pt]{article}

% nastavenie papiera
\RequirePackage[
    paper                   = a4paper,
    left                    = 15mm,     % okraje 15mm (funguje standardne na kazdej tlaciarni)
    right                   = 15mm,
    top                     = 15mm,
    bottom                  = 15mm,
    headsep                 = 16pt,     % priestor medzi hlavickou a textom
    footskip                = 32pt,     % priestor medzi footerom a textom
    includeheadfoot,                    % chcem header a footer
]{geometry}

\RequirePackage{graphicx}       % obrazky
\RequirePackage{titlesec}       % custom nadpisy sekcii
\RequirePackage{booktabs}       % pekne tabulky - \midrule, \toprule...
\RequirePackage{multirow}       % viacriadkove bunky v tabulkach
\RequirePackage{siunitx}        % fyzikalne jednotky
\RequirePackage{bm}             % bold math
\RequirePackage{amsfonts}       % nejake maticke fonty, primarne asi \mathbb{R}
\RequirePackage{amsmath}        % vacsina matickych symbolov

\RequirePackage{fancyhdr}       % header a footer
\pagestyle{fancy}               % chcem fancy stranku - zo vsetkym, co sa da

\setlength{\parindent}{0cm}     % nechcem odsadenie prveho riadku v odseku
\setlength{\parskip}{6pt}       % medzera medzi odsekmi

% obsah headeru
\fancyhead{}
\fancyhead[L]{\large\scshape\@title}

% obsah footeru
\fancyfoot{}
\fancyfoot[L]{\@author}
\fancyfoot[R]{\small \thepage}

% chceme ciary pri footeri a headeri
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

% na miesto "Figure 1" chceme "Obrázok 1"
\renewcommand{\figurename}{Obrázok}

% nechcem ciaru nad poznamkami pod ciarou (ake ironicke, ze)
\def\footnoterule{}

% toto je na podporu slovenskych uvodzoviek (napises "aa" a vykresli sa tak, ako je u nas zvykom ,,aa'')
\RequirePackage[slovak]{babel}
\RequirePackage{csquotes}
\DeclareQuoteAlias{german}{slovak}
\MakeOuterQuote{"}

% nastavime si riadkovanie na 1.2
\renewcommand{\baselinestretch}{1.2}

% nechcem cislovane sekcie
\titleformat{\section}{\bfseries\Large}{}{0em}{}

% subsekcie chcem cislovat len ich cislom (t.j. nie 1.1. ale len 1.)
\renewcommand{\thesubsection}{\arabic{subsection}}
\titleformat{\subsection}{\bfseries\large}{\thesubsection.}{1em}{}

% nastavenie odkazov
\RequirePackage[unicode]{hyperref}  % links
\RequirePackage{xcolor}             % colors
\RequirePackage{xurl}               % rozdelenie dlhych linkov na viac riadkov

\definecolor{default-filecolor}{HTML}{A50000}
\definecolor{default-citecolor}{HTML}{4077C0}
\definecolor{default-urlcolor}{HTML}{4077C0}

\hypersetup{
  hidelinks,
  colorlinks=true,
  linkcolor=.,                  % internal links
  filecolor=default-filecolor,  % local files
  citecolor=default-citecolor,  % citation links
  urlcolor=default-urlcolor,    % url links
  pdfcreator={Gardener's LaTeX template}
}
\urlstyle{same} % disable monospaced font for URLs

% defaultne nech je figure tam, kde sa nachadza v tex zdrojaku
\RequirePackage{float}
\floatplacement{figure}{H}

% code highlighting
\RequirePackage{minted}
\usemintedstyle{tango}

% source sans a source code fonty
\RequirePackage[default]{sourcesanspro}
\RequirePackage{sourcecodepro}

% href in footnote
% \DeclareRobustCommand{\href}[2]{#2\footnote{\url{#1}}}

% lepsie figure captions
\RequirePackage[skip=4mm, labelfont=bf, singlelinecheck=false, justification=raggedright]{caption}
