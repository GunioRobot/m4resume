divert(-3)
define(`make_talker',
 `define(`say_$1',
    `$1')')
divert`'dnl
make_talker(`razzle')
say_razzle
