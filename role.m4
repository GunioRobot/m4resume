divert(-1)
define(`spaces_to_lines', `translit(`$*', ` ', `_')')
define(`reverse', `ifelse(`$#', `0', , `$#', `1', ``$1'',
                               `reverse(shift($@)), `$1'')')
define(`cai', `class="achivement_item"')
define(`make_line_items', `ifelse(`$#', `0', , 
                          `$#', `1', `  ifelse(mode, `html',`  <li cai>$1</li>',
                                             mode, `latex', `\{item}$1')',
                          `make_line_items(shift($@))
    ifelse(mode, `html',`  <li cai>$1</li>',
                                         mode, `latex', `\{item}$1')')')dnl
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
ifelse(mode, `html',
`<div class="achievement">
  <p class="employer_and_dates">
    <span class="employer">$1</span>
    <span class="dates">$2</span>
  </p>',
  mode, `latex', `\section{`spaces_to_lines($1)'_``''`spaces_to_lines(`$2')'}')
  divert(-2)dnl
ifelse(mode,`html', ``<ul>'', mode, `latex', ``\begin{itemize}'')
  `make_line_items(reverse(shift(shift($@))))'
ifelse(mode,`html', `  </ul>',
       mode, `latex', `  \end{itemize}')
ifelse(mode,`html', `</div>',
       mode, `latex', `% End section'))
divert`'dnl