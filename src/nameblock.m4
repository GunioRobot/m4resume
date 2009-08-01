ifelse(mode, `latex', `
\begin{center}
  \fontfamily{phv}
    \Huge `'CANDIDATE_NAME`'
\end{center}
\vspace{-8pt} \rule{\textwidth}{1pt}

\begin{center}
	\begin{tabular}{p{2in}p{2in}p{2in}}
		www: CANDIDATE_HOMEPAGE & ph:CANDIDATE_PHONE & em:CANDIDATE_EMAIL \\
		tw: @sgharms & gh:__RDFA_CANDIDATE_GITHUB & fb:  CANDIDATE_FACEBOOK \\
	\end{tabular}
\end{center}

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
  ifdef(`__RDFA_CANDIDATE_GITHUB',`<li>GitHub: __RDFA_CANDIDATE_GITHUB</li>',`ifdef(`CANDIDATE_GITHUB', `<li>CANDIDATE_GITHUB</li>')')
  ifdef(`CANDIDATE_FACEBOOK',`<li>Facebook: linkify(CANDIDATE_FACEBOOK)</li>')
  ifdef(`__RDFA_CANDIDATE_HOMEPAGE',`<li>Home / Blog: __RDFA_CANDIDATE_HOMEPAGE</li>',`ifdef(`CANDIDATE_HOMEPAGE', `<li>CANDIDATE_HOMEPAGE</li>')')	
</ul>
</div>
')
