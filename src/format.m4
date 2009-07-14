divert(`-9')`'dnl
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
                               `<em>$`1'</em>', `\textif{$`1'}'),
         wrap_$1,  `b', ifelse(mode, `html', 
                               `<strong>$`1'</strong>', `\textbf{$`1'}'),
         wrap_$1,  `s', ifelse(mode, `html', 
                               `<tt>$`1'</tt>', `\textsf{$`1'}')
      )`dnl'',
      `wrap_$1 was not defined'dnl
     )
)')
dnl
define(`generate_formatter_for',
`ifelse(`$#', 0, ,
        `$#', 1, $1,
        `generate_formatter($1)dnl
         generate_formatter_for(shift($@))'')
'
)

generate_formatter(`place')dnl
generate_formatter(`job')dnl
generate_formatter(`dates')dnl
