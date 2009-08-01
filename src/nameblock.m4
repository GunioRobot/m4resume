ifelse(mode, `latex', `
\begin{center}
  \fontfamily{phv}
    \Huge `'CANDIDATE_NAME`'
\end{center}
\vspace{-8pt} \rule{\textwidth}{1pt}

\vspace{-1pt} {\small\itshape CANDIDATE_ADDRESS  \hfill CANDIDATE_PHONE; CANDIDATE_EMAIL}

% Or maybe something like this, depends on your audience, I suppose
% \vspace{-1pt} {\small\itshape Twitter: @sgharms  \hfill GitHub:__RDFA_CANDIDATE_GITHUB \hfill Facebook:  CANDIDATE_FACEBOOK \hfill CANDIDATE_HOMEPAGE}

',`
<div id="nameblock" typeof="foaf:Person" about="CANDIDATE_ABOUT_URI">
<h1>
__RDFA_CANDIDATE_NAME
</h1>
<ul>
  ifdef(`CANDIDATE_ADDRESS', `<li>CANDIDATE_ADDRESS</li>')
  ifdef(`CANDIDATE_PHONE', `<li>__RDFA_CANDIDATE_PHONE</li>')
  ifdef(`CANDIDATE_EMAIL', `<li>__RDFA_CANDIDATE_EMAIL</li>')
  ifdef(`CANDIDATE_TWITTER',`<li>Twitter`': CANDIDATE_TWITTER</li>')
  ifdef(`__RDFA_CANDIDATE_GITHUB',`<li>GitHub: linkify(__RDFA_CANDIDATE_GITHUB)</li>',`ifdef(`CANDIDATE_GITHUB', `<li>CANDIDATE_GITHUB</li>')')
  ifdef(`CANDIDATE_FACEBOOK',`<li>Facebook: linkify(CANDIDATE_FACEBOOK)</li>')
  ifdef(`__RDFA_CANDIDATE_HOMEPAGE',`<li>Home / Blog: linkify(__RDFA_CANDIDATE_HOMEPAGE)</li>',`ifdef(`CANDIDATE_HOMEPAGE', `<li>CANDIDATE_HOMEPAGE</li>')')	
</ul>
</div>
')
