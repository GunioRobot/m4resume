# MANUAL DEFINITON:
#  define(`exch', `$2, $1')
#  define(exch(``expansion text'', ``macro''))
#  macro
#
# MY DEFINITION
#  define(`exch', `$2 $1')dnl
#  define(exch(``expansion text'', ``macro''))dnl
#  macro
#
# IMPROVED
# Dnl
# dnl
# define(`exch', `$2, $1')dnl
# define(exch(``expansion text'', ``macro''))dnl
# macro

dnl
dnl
define(`exch', `$2, $1')dnl
define(exch(`expansion text', `macro'))dnl
macro
define(`test', ``Macro name: $0'')
test
define(`nargs', `$#')
nargs(`uno', dos, `tres')


define(`steven', `some dude')
steven
pushdef(`steven', `some sleepy dude')
steven
popdef(`steven')
steven


#######

ifdef(`steven', ``steven' is defined and was [steven]', ``steven' is not
defined')dnl

ifelse(this is a very long comment in
which I make some
#opinions
#and this is very interesting
)dnl


ifelse(`monkey', `zebra', `they were equal', `they were not, steven')
ifelse(`monkey', `zebra', `they were equal2a',
       `tree',    `treea',  `they were equal2b',`leftover')`'dnl


