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
define(`CANDIDATE_ADDRESS', ``12445 Alameda Trace Circle Apt. 1016, __RDFA_Austin, Texas 78727'')
define(`CANDIDATE_PHONE', ``(512)466-5756'')
define(`CANDIDATE_EMAIL', ``resume@sgharms.oib.com'')
define(`CANDIDATE_TWITTER', ``<a href="http://twitter.com/sgharms">@sgharms</a>'')
define(`CANDIDATE_FACEBOOK', ``facebook.com/sgharms'')
define(`CANDIDATE_GITHUB', ``github.com/sgharms'')
define(`CANDIDATE_HOMEPAGE', ``stevengharms.com'')
define(`CANDIDATE_ABOUT_URI', `http://`'changecom(`*')CANDIDATE_HOMEPAGE`#'me'`'changecom(`#'))
define(`CANDIDATE_RESUME_URL', `http://`'CANDIDATE_HOMEPAGE`'/resume.html')

###############################################################################
CONVENIENCE MACROS
For specifying the configuration of the HTML template
###############################################################################
define(`RUL', ``Rijksuniversiteit te Leiden, Leiden, The Netherlands'')
define(`RUL_EDUCATION_MYDATES',`1997-1998')
define(`UTEXAS', ``University of Texas at Austin'')
define(`ITE', `I.T. Engineer')
define(`ITA', `I.T. Analyst')
define(`ITD', `I.T. Developer')
define(`SYSAD', `Systems Administrator')
define(`EMS', `Enterprise Messaging Systems')
define(`CCT', `Communication and Collaboration Platform')

###############################################################################
EDUCATION MACROS
For specifying the configuration of the HTML template
define(`RES_FORMAT_DO_EDUCATION_STATEMENT')
define(`RES_EDUCATION_MYUNI', `The University of Texas at Austin')
define(`RES_EDUCATION_MYDATES', `1995-2000')
define(`RES_FORMAT_DO_COURSES_STATEMENT')
define(`RES_FORMAT_DO_CODESAMP_STATEMENT')
define(`MIS', `Management Information Systems')
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
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:geo="http://www.w3.org/2003/01/geo/wgs84_pos#"
	xmlns:doap="http://usefulinc.com/ns/doap#"
  version="XHTML+RDFa 1.0" xml:lang="en">'',
``<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">''))

define(`RES_HTML_HEAD', `
<head>
	<title ifdef(`do_rdfae', ``about="http://stevengharms.com/resume.html" property="cv:cvTitle"'')>Résumé for CANDIDATE_NAME</title>
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <meta property="generator" content="M4Resume: https://github.com/sgharms/m4resume/tree" />
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
`__RDFA_CANDIDATE_NAME',`<span property="foaf:name" rev="dc:creator" href="http://stevengharms.com/resume.html" about="CANDIDATE_ABOUT_URI">CANDIDATE_NAME</span>',
`__RDFA_CANDIDATE_GITHUB',`<a about="CANDIDATE_ABOUT_URI" rel="foaf:currentProject" href="CANDIDATE_GITHUB">CANDIDATE_GITHUB</a>',
`__RDFA_RUL',`<a about="CANDIDATE_ABOUT_URI" rel="foaf:schoolHomepage" property="foaf:schoolname" href="http://www.leiden.edu" content="RUL">RUL</a>',
`__RDFA_UTEXAS',`ifdef(`do_rdfa',`<a about="CANDIDATE_ABOUT_URI" property="foaf:schoolname" rel="foaf:schoolHomepage" content="UTEXAS" href="http://www.utexas.edu">UTEXAS</a>',`UTEXAS')',
`__RDFA_CANDIDATE_HOMEPAGE',`<a rel="foaf:homepage foaf:weblog foaf:webpage" href="CANDIDATE_HOMEPAGE">CANDIDATE_HOMEPAGE</a>',
`__RDFA_CANDIDATE_ADDRESS',`<a rel="foaf:based_near" content="[_:AustinGeoNode]">CANDIDATE_ADDRESS</a>',
`__RDFA_Austin',`<span about="[_:AustinGeoNode]"><span property="geo:lat" content="30.267" /><span property="geo:long" content="97.74"/>Austin</span>',
`__RDFA_PERSONAL_STATEMENT', ` property="cv:cvDescription" about="http://stevengharms.com/resume.html"',
`__RDFA_CISCO', `ifdef(`do_rdfa',
	`<a href="http://www.cisco.com" rel="cv:workplaceHomepage cv:employedIn foaf:workplaceHomepage">Cisco Systems</a>',
	`<a href="http://www.cisco.com">Cisco Systems</a>')',
`__RDFA_DIST_STATUS', `<span property="cv:isActive" content="0" /> dnl
<span property="cv:isConfidential" content="1" />',
`__RDFA_MIS',`ifdef(`do_rdfa',<span property="cv:eduMajor">MIS</span>,`MIS')',
`__RDFA_DUTCH_MINOR',`ifdef(`do_rdfa',<span property="cv:eduMinor">Dutch</span>,`Dutch')',
`__RDFA_RES_EDUCATION_MYDATES', `ifdef(`do_rdfa',rdfa_bracket_dates(`RES_EDUCATION_MYDATES'),`RES_EDUCATION_MYDATES')',
`__RDFA_RUL_EDUCATION_MYDATES', `ifdef(`do_rdfa',rdfa_bracket_dates(`RUL_EDUCATION_MYDATES'),`RUL_EDUCATION_MYDATES')'
')
ifdef(`do_rdfa', 
include(`src/rdfa_support.m4')
format_RDFa_pairs(RDFa_tokens)
)
###############################################################################
Macros that are data sources
define(`PERSONAL_STATEMENT_BODY',
`I love learning and experimentation.  I draw on a background that includes philosophy, business, dnl
classics, code, and nine years of industry experience to provide innovative solutions, to ask non-obvious dnl
questions, and to push the boundaries of what is perceived as possible.')

define(`PERSONAL_TARGET_BLOCK',
``
<div rel="cv:hasTarget">
	<div typeof="cv:Target">
	<span property="cv:targetCareerLevel" content="Developer" />
	<span property="cv:targetCareerLevel" content="IT Architect" /> 
	<span property="cv:targetCareerLevel" content="IT Strategist" /> 
	<span property="cv:targetJobType" content="IT Engineering" />
	<span property="cv:targetJobType" content="IT Architecture" />
	<span property="cv:targetJobType" content="Internet software development" />
	<span property="cv:targetJobType" content="Ruby development" />
	<span property="cv:targetJobType" content="Rails development" />
	<span property="cv:targetJobType" content="Ruby on Rails" />
	<span property="cv:targetCompanyDescription">
	  I am looking for a passionate start-up
	  opportunity or an enterprise that is ready to shake up its old way of
	  thinking about how to enable collaboration.
	</span>
	<span property="cv:targetCountry" content="USA" />
	<span property="cv:targetJobDescription" content="
	  I am seeking a position that finds the diversity of
	  my interests and passions to be a bonus; I am looking for a team of
	  innovative thinkers who are on the forefront of linguistic, semantic, and
	  metaprogrammatic thinking." />   

	<span property="cv:targetCompanyIndustry" content="Internet" />
	<span property="cv:targetJobMode" content="full-time" />
	<span property="cv:weeksNoticePeriod" content="2" />
	<span property="cv:conditionWillRelocate" content="True" />
	<span property="cv:conditionWillTravel" content="True" />
	</div>
</div>
'')



