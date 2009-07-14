divert(`-9')`'dnl
define(`generate_formatter',
`dnl
define(`format_$1', 
  ifdef(`wrap_$1',
      `ifelse( 
         wrap_$1,  `i', `\textit{$`1'}',
         wrap_$1,  `b', `\textbf{$`1'}',
         wrap_$1,  `s', `\textsf{$`1'}',
      )`dnl'',
      `wrap_$1 was not defined'
     )
         )')dnl
divert`'dnl
generate_formatter(`moopy')dnl
format_moopy(`garb')
