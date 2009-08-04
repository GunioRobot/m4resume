divert(`-9')`'dnl
define(`de_prefix', `substr(`$1', len(`__RDFA_'))')
dnl
ifelse(`
% Generate formatter, a meta-programmatic macro that generates format_TERM
% that are passed a string and then wrapped')
dnl
define(`generate_formatter',
`dnl
define(`format_$1', 
  ifdef(`wrap_$1',
`ifelse( 
   wrap_$1,  `i', ifelse(mode, `html', 
                         `$`1'', `\textit{$`1'}'),
   wrap_$1,  `b', ifelse(mode, `html', 
                         `$`1'', `\textbf{$`1'}'),
   wrap_$1,  `s', ifelse(mode, `html', 
                         `$`1', `\textsf{$`1'}')dnl
)dnl',
      `wrap_$1 was not defined'dnl
     )
)')dnl
dnl
define(`generate_formatter_for',
`ifelse(`$#', 0, ,
        `$#', 1, $1,
        `generate_formatter($1)dnl
         generate_formatter_for(shift($@))'')
'
)

define(`linkify', `<a href="http://$1"ifdef(`$2', $2, `')>http://$1</a>')

generate_formatter(`place')dnl
generate_formatter(`job')dnl
generate_formatter(`dates')dnl

define(`simplecount', `$#')
define(`simpleecho', ``$@'')

define(`cv_note_ify',
`ifdef(`do_rdfa', 
`changequote(`[',`]')dnl
ifelse($#, 0, , $#,1,[`<span property="cv:Notes">$1</span>'],
[``<span property="cv:Notes">$1</span>'',cv_note_ify(shift($@))`dnl']
changequote`'dnl
)',`Not RDFA')')

define(`make_line_items', `ifelse(`$#', `0', , 
                          `$#', `1', `  ifelse(mode, `html',`  <li cai>$1</li>',
                                             mode, `latex', `\item $1')',
                          `make_line_items(shift($@))
    ifelse(mode, `html',`  <li cai>$1</li>',
                                         mode, `latex', `\item $1')')')dnl
ifelse(
  NAME:  achieve
  ARGUMENTS:
    EMPLOYER
    ROLE
    DATES
    Activity1
    Activity2
    ActivityN
)dnl
define(`achieve',
`ifelse(mode, `html',
`
ifdef(`do_rdfa',`<!-- BEGIN CONTAINER DIV FOR RDFa -->
<div rel="cv:hasWorkHistory">')
<!-- BEGINNING DIV for $3 -->
<div class="achievement"`'ifdef(`do_rdfa', ` href="[_:translit(`$2',`<>"" :/"',`-------')]" typeof="cv:workHistory"  ')>
  <p class="employer_and_dates">
    <span class="employer">$1</span>
    <span class="role">$2</span>
    <span class="dates">$3</span>
  </p>',
  mode, `latex', \subsection*{$1 : $2}
  \label{patsubst(
         `translit(
           patsubst(`$1 $2',
             `text\w+',
             `'),
           `A-Z\{} ',
           `a-z___')', 
         `_+', 
         `_')`'}
  $3)
ifelse(mode,`html', ``  <ul>'', mode, `latex', ``\begin{itemize}'')
  make_line_items(reverse(shift(shift(shift($@)))))
ifelse(mode,`html', `  </ul>',
       mode, `latex', `\end{itemize}')
ifelse(mode,`html', `<!-- CLOSING DIV for $3 -->
  </div>
</div>',
       mode, `latex', `% End subsection
       ')'
)

define(`spaces_to_lines', `translit(`$*', ` ', `_')')
define(`reverse', `ifelse(`$#', `0', , `$#', `1', ``$1'',
                               `reverse(shift($@)), `$1'')')

define(`rdfa_bracket_dates',
`<span property="cv:eduStartDate">substr($1,`0',`4')</span>-<span property="cv:eduGradDate">substr($1,`5',`9')</span>')

define(`fdash', `ifelse(mode, `html', `&ndash;', mode, `latex', `--')')
