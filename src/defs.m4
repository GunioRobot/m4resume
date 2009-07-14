divert(-100)
###############################################################################
FORMATTING MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`wrap_place', `i')
define(`wrap_job',   `b')
define(`wrap_dates', `s')
 
###############################################################################
PERSONAL MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`CANDIDATE_NAME', `Steven G. Harms')
 
###############################################################################
HTML MACROS
For specifying the configuration of the HTML template
###############################################################################

define(`RES_HTML_DECLARATION',
``<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'')

define(`RES_HTML_HEAD', `
<head>
  <meta http-equiv="content-type" content="text/html; charset=utf-8">
  <title>R&eacute;sum&eacute; for CANDIDATE_NAME</title>
</head>')
