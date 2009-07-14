divert(-3)
define(`make_talker',
 `define(`$1_says',
    $`1')')
divert`'dnl
make_talker(`cow')dnl
cow_says(`moo')`'dnl
dnl
divert(-9)`'dnl
define(`generate_formatter',
`
  define(`format_$1', 
         `
ifdef(`wrap_$1',
      `yes [wrap_`'$1] was defined as [wrap_$1]`'
#dnl
#`ifelse( wrap_$1,  `i', unus,
#         wrap_$1,  `b', $`1',
#         wrap_$1,  `s', nautae,
#)'`'dnl
#dnl
#finished the else
      ',
      `wrap_$1 was not defined'
     )
         ')
'
)

divert`'dnl
generate_formatter(`moopy')
format_moopy(`garb')
