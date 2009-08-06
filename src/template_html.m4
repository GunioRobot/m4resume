divert`'dnl
RES_HTML_DECLARATION
RES_HTML_DTD_DECLARATION`'dnl
RES_HTML_HEAD`'dnl
divert(`2')
</html>
divert`'dnl
<body>
include(`src/nameblock.m4')dnl
dnl

<!-- Begin resume proper -->
<!-- This document (..resume.html) cv:cvTitle Resume... -->
<!-- This document (..resume.html) isTypeof cv:CV-->
<div id="resume" typeof="cv:CV" about="http://stevengharms.com/resume.html" property="cv:cvTitle" content="Résumé for Steven G. Harms">    
<!-- In here, the about should still be pointing to (...resume.html) -->

ifdef(`RES_FORMAT_DO_PERSONAL_STATEMENT', `include(`src/personal_statement.m4')')dnl

<!-- Open for DIV class "achievements" --> dnl
 <div class="achievements">
   <h2>Work Experience</h2>
   include(`src/workexp.m4')
<!-- Close for DIV class "achievements" -->
 </div>


ifdef(`RES_FORMAT_DO_EDUCATION_STATEMENT',    `<div id="education_block">include(`src/education_statement.m4')</div>')dnl
RIGHT BEFORE
ifdef(`RES_FORMAT_DO_COURSES_STATEMENT', `<div id="activities_block">include(`src/courses_statement.m4')</div>')dnl
RIGHT AFTER
ifdef(`RES_FORMAT_DO_SKILLS_STATEMENT',    `<div id="skills_block">include(`src/skills_statement.m4')</div>')dnl

ifdef(`RES_FORMAT_DO_ACTIVITES_STATEMENT', `<div id="activities_block">include(`src/activities_statement.m4')</div>')dnl
ifdef(`RES_FORMAT_DO_EXTRACURR_STATEMENT', `<div id="extracurr_block">include(`src/extracurr_statement.m4')</div>')dnl
ifdef(`RES_FORMAT_DO_HONORS_STATEMENT',    `<div id="honors_block">include(`src/honors_statement.m4')</div>')dnl


<!-- Closing DIV for id#resume -->
</div>
<!-- Projects Div Open -->
<div>
define(``\LaTeX'', ``LaTeX'')
ifdef(`RES_FORMAT_DO_CODESAMP_STATEMENT',  `<div id="codesamp_block">include(`src/codesamp_statement.m4')</div>')dnl
<!-- Projects Div Close -->
undefine(`amp')
</div>
<div id="w3c_praise">
<hr/>
	<p about=""
     resource="http://www.w3.org/TR/rdfa-syntax"
     rel="dct:conformsTo" xmlns:dc="http://purl.org/dc/terms/">
    <a href="http://validator.w3.org/check?uri=referer"><img
        src="http://www.w3.org/Icons/valid-xhtml-rdfa"
        alt="Valid XHTML + RDFa"   /></a>
 </p>
<p>XML lovers and machines might prefer the <a href="http://www.w3.org/2007/08/pyRdfa/extract?uri=referer">RDF</a> version.</p>
<p>Or, you might want to see this résumé's RDF turned into a <a href="http://www.w3.org/RDF/Validator/ARPServlet?URI=http%3A%2F%2Fstevengharms.com%2Fresume.rdf&amp;PARSE=Parse+URI%3A+&amp;TRIPLES_AND_GRAPH=PRINT_GRAPH&amp;FORMAT=PNG_EMBED">graph</a>.</p>
<p>Or, if you want to print it out, you might like a <a href="resume.pdf">pdf</a>.
</div>
</body>
divert`'dnl
undivert(`3')
undivert(`2')dnl

