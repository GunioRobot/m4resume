divert(-3)
define(`make_talker',
 `define(`$1_says',
    $`1')')
divert`'dnl
make_talker(`cow')dnl
cow_says(`moo')
