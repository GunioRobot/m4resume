divert(-100)
###############################################################################
FORMATTING MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`wrap_place', `i')
define(`wrap_job',   `b')
define(`wrap_dates', `s')

# Unset this if you don't want to include the personal statement template,
# some people don't like them.
define(`RES_FORMAT_DO_PERSONAL_STATEMENT', `1')

# I certainly hope you have some skills, but...perhaps your name is Linus
# Torvalds and you don't really need it.
define(`RES_FORMAT_DO_SKILLS_STATEMENT', `1')

#Some people have extra-curricular activities, they may define this
# undefine(`RES_FORMAT_DO_ACTIVITES_STATEMENT')

#Some people have extra-curricular activities, they may define this
# undefine(`RES_FORMAT_DO_EXTRACURR_STATEMENT')

#Some people have honors, they may define this
# undefine(`RES_FORMAT_DO_HONORS_STATEMENT')
 
#Share the code
define(`RES_FORMAT_DO_CODESAMP_STATEMENT', `1')

###############################################################################
PERSONAL MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`CANDIDATE_NAME', `Steven G. Harms')
define(`CANDIDATE_ADDRESS', `123 Main St. Apt. 245, Austin, Texas 78727')
define(`CANDIDATE_PHONE', ``415-555-1212'')
define(`CANDIDATE_EMAIL', `nobodys\_real\_address@gmail.com')
define(`CANDIDATE_EMAIL', ``@m4resume'')
define(`CANDIDATE_FACEBOOK', ``http://facebook.com/sgharms'')

###############################################################################
CONVENIENCE MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`STH', `Some Thing Here')

###############################################################################
EDUCATION MACROS
For specifying the configuration of the HTML template
define(`RES_EDUCATION_MYUNI', `The University of Hard Knocks')
define(`RES_EDUCATION_MYDATES', `1995-2000')
define(`RES_EDUCATION_DEGREEINFO',`BBA:  Mumbledy-stuff (MIS), 
        BS:  M4 Processing,'),
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
