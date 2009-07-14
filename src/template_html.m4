divert
RES_HTML_DECLARATION
<html>
RES_HTML_HEAD
divert(`2')
</html>
divert
<body>
include(`src/nameblock.m4')dnl
dnl
ifdef(`RES_FORMAT_DO_PERSONAL_STATEMENT', `include(`src/personal_statement')')dnl
  <div class="achivements">
    <h1>Work Experience</h1>
    include(`src/demo.m4')
  </div>

ifdef(`RES_FORMAT_DO_SKILLS_STATEMENT',    `<div id="skills_block">include(`src/skills_statement')</div>')dnl

ifdef(`RES_FORMAT_DO_ACTIVITES_STATEMENT', `<div id="skills_block">include(`src/activities_statement')</div>')dnl

ifdef(`RES_FORMAT_DO_EXTRACURR_STATEMENT', `<div id="skills_block">include(`src/extracurr_statement')</div>')dnl

ifdef(`RES_FORMAT_DO_HONORS_STATEMENT',    `<div id="skills_block">include(`src/honors_statement')</div>')dnl

ifdef(`RES_FORMAT_DO_CODESAMP_STATEMENT',  `<div id="skills_block">include(`src/codesamp_statement')</div>')dnl
</body>
undivert(`2')dnl
