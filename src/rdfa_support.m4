divert(-1)`'dnl

define(`RDFA_DEFINITON_STRING',
`ifelse( mode, `latex', `de_prefix(`$1')',
mode, `html', ifdef(`do_rdfa', `$2', ``translit(de_prefix(`$1'), `_', ` ')''))')

define(`BUILD_AN_RDFA_DEFINITION',`define(`$1', `RDFA_DEFINITON_STRING(`$1', `$2')')')

define(`format_RDFa_pairs',
`ifelse(`$#', 0, ,
`$#', 1, $1,
`BUILD_AN_RDFA_DEFINITION(`$1', `$2')`'dnl
format_RDFa_pairs(shift(shift($@)))')')
