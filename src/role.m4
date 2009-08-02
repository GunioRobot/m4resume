divert(-1)
ifelse(ifdef(`mode',`defined'),,`define(`mode',`latex')')
define(`spaces_to_lines', `translit(`$*', ` ', `_')')
define(`reverse', `ifelse(`$#', `0', , `$#', `1', ``$1'',
                               `reverse(shift($@)), `$1'')')
define(`cai', `class="achievement_item"')
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
`<div class="achievement">
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
ifelse(mode,`html', `</div>',
       mode, `latex', `% End subsection
       ')'
)



