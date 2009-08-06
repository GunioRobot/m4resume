divert(-20)

define(`aProj',
`ifelse(mode, `html',
`
  <div typeof="doap:Project">
		<p>
			<span property="doap:name">`$1'</span> Est:<span property="doap:created">`$2'</span> 
			Category:<span property="doap:category">`$5'</span>  Language:<span property="doap:programming-language">`$7'</span>
			<span property="doap:shortdesc" content="`$3'"/>
			<span rev="doap:maintainer" href="`$6'" />
			<span rel="doap:audience" content="`$8'" />
		</p>
		<p>[<a href="`$9'" rel="doap:homepage">`$9'</a>]</p>
		<p>
			<span property="doap:description">
				`$4'
			</span>
		</p>	
</div>
',
mode, `latex',
`
\subsubsection*{`$1'}

{\bf Category:} `$5'  {\bf Language:} `$7' {\bf Audience:} `$8'

{\bf Homepage:} {\tt `$9'}
\vspace{0.05in}

`$4'

')')

divert`'dnl


ifelse(mode, `latex', `
\section*{Code Sample}
', `
<div id="code_samples">
<h2>Open-source projects:</h2>
</div>
')



aProj(`VerbaLatina',
`2008-08-26',
`Libraries for conjugating latin verbs and IRB like environment for exploration',
`A Rails application that wraps a library set that programmatically conjugates regular Latin Verbs from 4 principal parts into all verbal parts, moods, persons, etc.',
`Linguistics',
`http://stevengharms.com#me',
`Ruby',
`Linguists and Latin Students',
`https://github.com/sgharms/verbalatina/tree/master')

aProj(`Linguistics Package',
`2003-07-09',
`Michael Granger's Linguistics framework for Ruby (from SVN)',
`Linguistics is a framework for building linguistic utilities for Ruby objects
in any language. It includes a generic language-independant front end, a
module for mapping language codes into language names, and a module which
contains various English-language utilities',
`Linguistics',
`http://stevengharms.com#me',
`Ruby',
`Linguists and Latin Students',
`http://github.com/bruce/linguistics/tree/master')


aProj(`CMailguard',
`2008-07-06',
`Software for handling data from Sendmail, processing it, and then classifying, dropping, or holding it in an escrow pen.',
`For mail architectures that are highly distributed, consolidating mails and running elgibility-to-send to certain addresses is difficult and problematic.  Mailguard is designed such that addresses can be routed to a central server. Upon reaching the server, the data is sent via STDOUT into the mailguard application.  The application then classifies the sender and based on configuration parameters decides whether the mail should be silently discarded, forwarded on, or put into a holding pen until the message can be validated by a moderator.',
`Sysadmin',
`http://stevengharms.com#me',
`Perl',
`Mail systems administrators',
`http://code.google.com/p/cmailguard/')

aProj(`M4Resume',
`2009-07-09',
`Tool for writing résumés in M4, and then having it flexibly build them into a variety of formats:  'LaTeX`, XHTML, and XHTML+RDFa.',
`Tool for writing résumés in M4, and then having it flexibly build them into a variety of formats:  'LaTeX`, XHTML, and XHTML+RDFa.',
`Productivity',
`http://stevengharms.com#me',
`M4',
`Geeky job-seekers',
`https://github.com/sgharms/m4resume/tree')

aProj(`latintools',
`2009-28-01',
`Libraries for editing Latin text quickly.',
`Tools for entering' LaTeX`; useful for Latin writing quickly through Textmate; also has code for converting 'LaTeX-glyphs `at CLI to HTML or UTF-8 codes',
`Linguistics',
`http://stevengharms.com#me',
`Ruby',
`Classicists',
`https://github.com/sgharms/verbalatina/tree/master')




