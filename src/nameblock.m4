ifelse(mode, `latex', `
\begin{center}
  \fontfamily{phv}
    \Huge `'CANDIDATE_NAME`'
\end{center}
\vspace{-8pt} \rule{\textwidth}{1pt}

\vspace{-1pt} {\small\itshape CANDIDATE_ADDRESS  \hfill CANDIDATE_PHONE; CANDIDATE_EMAIL}

% Or maybe something like this, depends on your audience, I suppose
% \vspace{-1pt} {\small\itshape Twitter: @sgharms  \hfill GitHub:URL \hfill SuperHappyFaceNetworkBook:  URL}

',`
<h1>
CANDIDATE_NAME
</h1>
<ol>
  <li><strong>THIS IS NOT MY REAL RESUME</strong>:  This is merely a
  demonstration of my project <a
  href="http://github.com/sgharms/m4resume/tree/master">m4resume</a> my real
  resume is at <a href="http://stevengharms.com/resume.html">my site</a>.</li>
  <li>CANDIDATE_ADDRESS</li>
  <li>CANDIDATE_PHONE</li>
  <li>CANDIDATE_EMAIL</li>
  ifdef(`CANDIDATE_TWITTER',`<li>Twitter`': CANDIDATE_TWITTER</li>')dnl
  ifdef(`CANDIDATE_FACEBOOK',`<li>Facebook: CANDIDATE_FACEBOOK</li>')dnl
</ol>
')
