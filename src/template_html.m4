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
dnl 
dnl <!-- Open for DIV class "achievements" --> dnl
dnl  <div class="achievements">
dnl    <h1>Work Experience</h1>
dnl    include(`src/workexp.m4')
dnl <!-- Close for DIV class "achievements" -->
dnl  </div>
dnl 
dnl ifdef(`RES_FORMAT_DO_SKILLS_STATEMENT',    `<div id="skills_block">include(`src/skills_statement.m4')</div>')dnl
dnl ifdef(`RES_FORMAT_DO_EDUCATION_STATEMENT',    `<div id="education_block">include(`src/education_statement.m4')</div>')dnl
dnl ifdef(`RES_FORMAT_DO_COURSES_STATEMENT', `<div id="activities_block">include(`src/courses_statement.m4')</div>')dnl

dnl ifdef(`RES_FORMAT_DO_ACTIVITES_STATEMENT', `<div id="activities_block">include(`src/activities_statement.m4')</div>')dnl
dnl ifdef(`RES_FORMAT_DO_EXTRACURR_STATEMENT', `<div id="extracurr_block">include(`src/extracurr_statement.m4')</div>')dnl
dnl ifdef(`RES_FORMAT_DO_HONORS_STATEMENT',    `<div id="honors_block">include(`src/honors_statement.m4')</div>')dnl


<!-- Closing DIV for id#resume -->
</div>
<!-- Projects Div Open -->
<div>
dnl ifdef(`RES_FORMAT_DO_CODESAMP_STATEMENT',  `<div id="codesamp_block">include(`src/codesamp_statement.m4')</div>')dnl
<!-- Projects Div Close -->
</div>
</body>
divert`'dnl
undivert(`3')
undivert(`2')dnl

