\documentclass[]{article}

% Use utf-8 encoding for foreign characters
\usepackage[utf8]{inputenc}

% Setup for fullpage use
\usepackage{fullpage}

% This is now the recommended way for checking for PDFLaTeX:
\usepackage{ifpdf}

\ifpdf
\usepackage[pdftex]{graphicx}
\else
\usepackage{graphicx}
\fi

include(`src/custom_latex_macros.m4')dnl

\begin{document}

\ifpdf
\DeclareGraphicsExtensions{.pdf, .jpg, .tif}
\else
\DeclareGraphicsExtensions{.eps, .jpg}
\fi

include(`src/nameblock.m4')dnl

ifdef(`RES_FORMAT_DO_PERSONAL_STATEMENT', `include(`src/personal_statement')')dnl

\section*{Work Experience}
\label{sec: work_experience}
include(`src/demo.m4')dnl

ifdef(`RES_FORMAT_DO_SKILLS_STATEMENT',    `include(`src/skills_statement')')dnl

ifdef(`RES_FORMAT_DO_ACTIVITES_STATEMENT', `include(`src/activities_statement')')dnl

ifdef(`RES_FORMAT_DO_EXTRACURR_STATEMENT', `include(`src/extracurr_statement')')dnl

ifdef(`RES_FORMAT_DO_HONORS_STATEMENT',    `include(`src/honors_statement')')dnl

ifdef(`RES_FORMAT_DO_CODESAMP_STATEMENT',  `include(`src/codesamp_statement')')dnl

dnl Make sure you fetch this back at the end
divert(1)dnl
\end{document}
divert`'dnl
