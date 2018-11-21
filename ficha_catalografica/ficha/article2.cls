%*************************************************************%
  %*                                                           *%
  %*     Prepared by Gerald Banon                              *%
  %*     Instituto Nacional de Pesquisas Espaciais (INPE)      *% 
  %*     Copyright 2008 © MCT/INPE                             *%
  %*     All rights reserved.                                  *%
  %*     2008-02-20                                            *%
  %*                                                           *%
  %*************************************************************%
  
\NeedsTeXFormat{LaTeX2e} 
\LoadClassWithOptions{article}

\def\line#1{\centerline{#1\hfill}}	% allow using \line in LaTeX with another meaning
\newcommand{\revisionbar}[1]{\vspace{6pt}\line{\hskip -8pt\vrule\hskip 8pt\hfil\vbox{#1}}\vspace{3pt}}

%% Campos da ficha
\newcommand*{\numeroFICHAC}[1]{\gdef\@numeroFICHAC{#1}}
\newcommand*{\autorUltimoNomeFICHAC}[1]{\gdef\@autorUltimoNomeFICHAC{#1}}
\newcommand*{\autorAbreviadoFICHAC}[1]{\gdef\@autorAbreviadoFICHAC{#1}}
\newcommand*{\tituloFICHAC}[1]{\gdef\@tituloFICHAC{#1}}
\newcommand*{\ano}[1]{\gdef\@ano{#1}}
\newcommand*{\tipo}[1]{\gdef\@tipo{#1}}
\newcommand*{\instituicao}[1]{\gdef\@instituicao{#1}}
\newcommand*{\instituicaocidade}[1]{\gdef\@instituicaocidade{#1}}
\newcommand*{\paginasFICHAC}[1]{\gdef\@paginasFICHAC{#1}}
\newcommand*{\serieinpe}[1]{\gdef\@serieinpe{#1}}
\newcommand*{\palavraschaveFICHAC}[1]{\gdef\@palavraschaveFICHAC{#1}}
%% Campos da ficha - fim

\newenvironment{primeiraLinha}%
	{\begin{list}{}{%
\setlength{\leftmargin}{1.2em}
%\setlength{\topsep}{0pt}
%\setlength{\parskip}{0pt}
\setlength{\labelwidth}{0pt}
\setlength{\labelsep}{0pt}
\setlength{\itemindent}{-1.2em}
	}%
	\item}{%
	\end{list}}%

%\pdfbookmark[0]{\nomefichacatalografica}{nomefichac}

% Ficha
\renewcommand{\maketitle}{
	{
		\vspace*{\stretch{1}}{
			{
				\centering{
					{
						\protect\fbox{
							\parbox{12.5cm}{%
								\begin{singlespace}{
									\vspace{-.8cm}\hspace{0.7cm}\parbox{11cm}{%
										\hspace{0.3cm}%
										\begin{primeiraLinha}%
											\item\@autorUltimoNomeFICHAC.
										\end{primeiraLinha}%
									}
									\par
								}
								{\hspace{0.7cm}\parbox{11.5cm}{\hspace{0.5cm}\@tituloFICHAC~/   \@autorAbreviadoFICHAC.\ -- \@ano.} \par}
								{\vspace{2mm}\hspace{1.7cm}\@paginasFICHAC \\ \par}
								\end{singlespace}
                                {\hspace{0.7cm}\parbox{11.5cm}{\hspace{0.5cm}\@tipo--\@instituicao, \@instituicaocidade, \@ano.}\\ \\ \par}
                                
								{\hspace{0.7cm}\parbox{11.5cm}{\hspace{0.5cm}\@palavraschaveFICHAC}\\ \\ \par}
                                {\hspace{8cm} \@numeroFICHAC}
                                {\vspace{0.2cm}}
							}
						}
					}
				}\par \vspace*{\stretch{1}}
			}
		}
	}
}
% Ficha - fim

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% configuracao das margens 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\normalsize
\setlength{\paperheight}{29.7cm}
\setlength{\paperwidth}{21cm}
\setlength{\hoffset}{-1in}
\setlength{\voffset}{-1in}
\setlength{\oddsidemargin}{3cm}
\setlength{\evensidemargin}{2cm}
\setlength{\topmargin}{5.0cm}
\newlength{\bottommargin}
\setlength{\bottommargin}{2.0cm}
\setlength{\headheight}{12pt}
\setlength{\headsep}{12pt}
\setlength{\footskip}{1.5cm} 
\setlength{\textheight}{24cm}
\setlength{\textwidth}{16cm}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newlength{\linha}
\newlength{\baselsdefault}
\newlength{\parsdefault}
\newlength{\baselsinpe}
\newlength{\parsinpe}

\setlength{\linha}{12pt} %! o mesmo valor passado para a classe report
\setlength{\baselsdefault}{\baselineskip}
\setlength{\parsdefault}{\parskip}
\setlength{\baselsinpe}{1.5\linha} %% distancia entre linhas
\setlength{\parsinpe}{\linha}%  distancia a mais entre paragrafos

%setspace
\AtBeginDocument{\setlength{\baselineskip}{\baselsinpe}}
%\onehalfspacing
\AtBeginDocument{\setlength{\parskip}{\parsinpe}}
\setlength{\parindent}{0pt}
\frenchspacing %Não põe um espaco adicional após ponto final.
\sloppy %força que todas as linhas fiquem dentro das margens.

\AtBeginDocument{%
	\@ifpackageloaded{hyperref}{%
		\@ifpackageloaded{color}{}{%
			\RequirePackage{color}% needed to define darkblue color for urlcolor
		}
		\definecolor{darkblue}{rgb}{0,0,0.5}% need color package
		\hypersetup{%
			plainpages=false,
			bookmarksopen=true,
			bookmarksopenlevel=1,
			pdfstartview=FitV,
			bookmarksnumbered=false,
			linktocpage=true,
			colorlinks=true,
			urlcolor=darkblue,
			linkcolor=darkblue,
			filecolor=darkblue,
			citecolor=darkblue
		}
	}{}%
}
