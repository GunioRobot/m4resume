ifelse(mode, `latex', `
\begin{center}
  \fontfamily{phv}
    \Huge `'CANDIDATE_NAME`'
\end{center}
\vspace{-8pt} \rule{\textwidth}{1pt}

\vspace{-1pt} {\small\itshape CANDIDATE_ADDRESS  \hfill CANDIDATE_PHONE; CANDIDATE_EMAIL}

% \vspace{-1pt} {\small\itshape Twitter: @sgharms  \hfill GitHub:URL \hfill SuperHappyFaceNetworkBook:  URL}

',`is html')
