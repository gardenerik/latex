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

\RequirePackage[utf8]{inputenc} % encoding UTF-8
\RequirePackage{graphicx}       % obrazky
\RequirePackage{titlesec}       % custom nadpisy sekcii
\RequirePackage{lastpage}       % zistenie cisla poslednej strany
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
\fancyhead[L]{\large\scshape\@title}
\fancyhead[R]{}

% obsah footeru
\fancyfoot[R]{\@author}
\fancyfoot[C]{\small \thepage\ / \pageref{LastPage}}

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