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
define(`CANDIDATE_ADDRESS', `12445 Alameda Trace Circle Apt. 1016, Austin, Texas 78727')
define(`CANDIDATE_PHONE', ``(512)466-5756'')
define(`CANDIDATE_EMAIL', ``resume@sgharms.oib.com'')
define(`CANDIDATE_TWITTER', ``<a href="http://twitter.com/sgharms">@sgharms</a>'')
define(`CANDIDATE_FACEBOOK', ``http://facebook.com/sgharms'')
define(`CANDIDATE_GITHUB', ``http://www.github.com/sgharms'')
define(`CANDIDATE_HOMEPAGE', ``http://stevengharms.com'')
define(`CANDIDATE_ABOUT_URI', `changecom(`*')CANDIDATE_HOMEPAGE`#'me'`'changecom(`#'))



###############################################################################
CONVENIENCE MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`RUL', ``Rijksuniversiteit te Leiden, Leiden, The Netherlands'')

###############################################################################
EDUCATION MACROS
For specifying the configuration of the HTML template
define(`RES_EDUCATION_MYUNI', `The University of Texas at Austin')
define(`RES_EDUCATION_MYDATES', `1995-2000')
define(`RES_EDUCATION_DEGREEINFO',`BBA:  Management Information Systems (MIS), 
        BA:  Philosophy,'),
Don't remove this ','  ^
###############################################################################
HTML MACROS
For specifying the configuration of the HTML template
###############################################################################

define(`RES_HTML_DECLARATION',
ifdef(`do_rdfa',
``<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML+RDFa 1.0//EN" 
  "http://www.w3.org/MarkUp/DTD/xhtml-rdfa-1.dtd">'',
``<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">''))

define(`RES_HTML_DTD_DECLARATION',ifdef(`do_rdfa', ``<html xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:dc="http://dublincore.org/2008/01/14/dcelements.rdf#"
  xmlns:foaf="http://xmlns.com/foaf/0.1/"
  xmlns:cv="http://purl.org/captsolo/resume-rdf/0.2/cv#"
  xmlns:pim="http://www.w3.org/2000/10/swap/pim/contact#"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:vcard="http://www.w3.org/2001/vcard-rdf/3.0#"
  version="XHTML+RDFa 1.0" xml:lang="en">'',
``<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">''))

define(`RES_HTML_HEAD', `
<head>
  <title property="cv:cvTitle">Résumé for CANDIDATE_NAME</title>
  <link rel="cv:aboutPerson foaf:creator" content="CANDIDATE_HOMEPAGE" />
  <meta property="dc:language" content="en" />
  <meta property="cv:isActive" content="false" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta property="description" content="Résumé for CANDIDATE_NAME" />
  <meta property="generator=" content="M4Resume: https://github.com/sgharms/m4resume/tree" />
</head>')

###############################################################################
RDFa Support
This is where your special RDF-ized tags should go

define(`RDFa_tokens', 
``__RDFA_M4', `<span property="foaf:interest" about="CANDIDATE_ABOUT_URI">M4</span>', 
`__RDFA_Ruby',`<span property="foaf:interest" about="CANDIDATE_ABOUT_URI">Ruby</span>', 
`__RDFA_Ruby',`<span property="foaf:interest" about="CANDIDATE_ABOUT_URI">Rails</span>', 
`__RDFA_Ruby',`<span property="foaf:interest" about="CANDIDATE_ABOUT_URI">Latin</span>', 
`__RDFA_Ruby',`<span property="foaf:interest" about="CANDIDATE_ABOUT_URI">Dutch</span>', 
`__RDFA_CANDIDATE_PHONE',`<span rel="foaf:phone" property="foaf:phone" content="1+512-466-5756">CANDIDATE_PHONE</span>',
`__RDFA_CANDIDATE_EMAIL',`<span rel="foaf:mbox" href="mailto:resume-interest@sgharms.oib.com" property="foaf:mbox">CANDIDATE_EMAIL</span>',
`__RDFA_CANDIDATE_NAME',`<span property="foaf:name" about="CANDIDATE_ABOUT_URI">CANDIDATE_NAME</span>',
`__RDFA_CANDIDATE_GITHUB',`<a rel="foaf:currentProject" content="CANDIDATE_GITHUB" rel="foaf:currentProject" href="CANDIDATE_GITHUB" about="CANDIDATE_GITHUB">CANDIDATE_GITHUB</a>',
`__RDFA_RUL',`<a property="foaf:schoolname" href="http://www.rul.nl">RUL</a>',
`__RDFA_CANDIDATE_HOMEPAGE',`<a rel="foaf:homepage" rel="foaf:weblog" href="CANDIDATE_HOMEPAGE">CANDIDATE_HOMEPAGE</a>',
')
ifdef(`do_rdfa', 
include(`src/rdfa_support.m4')
format_RDFa_pairs(RDFa_tokens)
)
###############################################################################
