ifelse(mode, `latex', `
\begin{center}
  \fontfamily{phv}
    \Huge `'CANDIDATE_NAME`'
\end{center}
\vspace{-8pt} \rule{\textwidth}{1pt}

\begin{center}
	\begin{tabular}{p{2.25in}p{2.25in}p{2.25in}}
		www: CANDIDATE_HOMEPAGE & ph:CANDIDATE_PHONE & em:CANDIDATE_EMAIL \\
		tw: @sgharms & gh:__RDFA_CANDIDATE_GITHUB & fb:  CANDIDATE_FACEBOOK \\
	\end{tabular}
\end{center}

',`
<div id="nameblock" typeof="foaf:Person" about="CANDIDATE_ABOUT_URI">
ifdef(`do_rdfa',
`<span property="foaf:myersBriggs" content="INTJ"/>
<span property="foaf:title" content="Mr."/>
<span property="foaf:surname" content="Harms"/>
<span property="foaf:givenName" content="Steven"/>')

<h1>
__RDFA_CANDIDATE_NAME
</h1> <a href="resume.pdf"><img src="pdficon_large.gif" alt="Adobe PDF icon" /></a>
<ul>
dnl 	ifdef(`__RDFA_CANDIDATE_ADDRESS',`<li>__RDFA_CANDIDATE_ADDRESS</li>',`ifdef(`CANDIDATE_ADDRESS', `<li>CANDIDATE_ADDRESS</li>')')
	ifdef(`CANDIDATE_TWITTER',`<li>Twitter`': CANDIDATE_TWITTER</li>')
	<li>ifdef(`__RDFA_CANDIDATE_GITHUB',`GitHub: __RDFA_CANDIDATE_GITHUB',`CANDIDATE_GITHUB')</li>
	ifdef(`CANDIDATE_FACEBOOK',`<li>Facebook: linkify(CANDIDATE_FACEBOOK)</li>')
	<li>ifdef(`__RDFA_CANDIDATE_HOMEPAGE',`Home / Blog: __RDFA_CANDIDATE_HOMEPAGE',`ifdef(`CANDIDATE_HOMEPAGE', `<li>CANDIDATE_HOMEPAGE')')</li>
</ul>
<!-- Ends using typeof foaf:Person -->
</div>
')
