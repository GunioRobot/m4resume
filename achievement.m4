divert(-1)
define(`mode', `latex')
define(`reverse', `ifelse(`$#', `0', , `$#', `1', ``$1'',
                               `reverse(shift($@)), `$1'')')
define(`cai', `class="achivement_item"')
define(`make_line_items', `ifelse(`$#', `0', , 
                          `$#', `1', `  ifelse(mode, `html',`  <li cai>$1</li>',
                                             mode, `latex', `\{item}$1')',
                          `make_line_items(shift($@))
    ifelse(mode, `html',`  <li cai>$1</li>',
                                         mode, `latex', `\{item}$1')')')
define(`achieve',
ifelse(mode, `html',
`<div class="achievement">
  <p class="employer_and_dates">
    <span class="employer">$1</span>
    <span class="dates">$2</span>
  </p>',
  mode, `latex',
  `\section{$1:$2}')
  divert(-2)dnl
  divert`'dnl
ifelse(mode,`html', `<ul>'',
       mode, `latex', `\begin{itemize}')
  make_line_items(reverse(shift(shift($@))))
ifelse(mode,`html', `  </ul>',
       mode, `latex', `  \end{itemize}')
ifelse(mode,`html',`</div>',
       mode,`latex', `%end section')
divert`'dnl
*** achievement.m4 ***
achieve(`Dunkin Donuts', `Jan 2000-Feb 2001', `Made the donuts', `Sold the Donuts')
