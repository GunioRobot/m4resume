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

ifdef(`RES_FORMAT_DO_PERSONAL_STATEMENT', `include(`src/personal_statement.m4')')dnl

\section*{Work Experience}
\label{sec: work_experience}
include(`src/workexp.m4')dnl


ifdef(`RES_FORMAT_DO_EDUCATION_STATEMENT',    `include(`src/education_statement.m4')')dnl

ifdef(`RES_FORMAT_DO_COURSES_STATEMENT', `include(`src/courses_statement.m4')')dnl

ifdef(`RES_FORMAT_DO_ACTIVITES_STATEMENT', `include(`src/activities_statement.m4')')dnl

ifdef(`RES_FORMAT_DO_EXTRACURR_STATEMENT', `include(`src/extracurr_statement.m4')')dnl

ifdef(`RES_FORMAT_DO_HONORS_STATEMENT',    `include(`src/honors_statement.m4')')dnl

ifdef(`RES_FORMAT_DO_CODESAMP_STATEMENT',  `include(`src/codesamp_statement.m4')')dnl

ifdef(`RES_FORMAT_DO_SKILLS_STATEMENT',    `include(`src/skills_statement.m4')')dnl

dnl Make sure you fetch this back at the end
divert(1)dnl
\end{document}
divert`'dnl
