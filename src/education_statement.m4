define(`educ',
`ifelse(mode, `html',
`
ifdef(`do_rdfa',`<!-- BEGIN CONTAINER DIV FOR RDFa -->
<div rel="cv:hasEducation">')
<!-- BEGINNING DIV for $3 -->
<div class="educational_inst"`'ifdef(`do_rdfa', ` href="[_:translit(`$2',`<>"" :/"',`-------')]" rel="cv:Education"  ')>
  <p class="school_and_dates">
    <span class="schoolname">$1</span>
    <strong>Major:</strong><span class="major">$2</span>
    <strong>Minor:</strong><span class="minor">$3</span>
    <strong>Dates:</strong><span class="dates">$4</span>
  </p>
  <p class="deg_awarded">
  $5
  </p>
  <p ifdef(`do_rdfa',` property="cv:eduDescription"')`'>
  $6
  </p>
',
  mode, `latex', \subsection*{$1 : $2}
  \label{patsubst(
         `translit(
           patsubst(`$1 $2',
             `text\w+',
             `'),
           `A-Z\{} ',
           `a-z___')', 
         `_+', 
         `_')`'}
  $4)
ifelse(mode,`html', `<!-- CLOSING DIV for $3 -->
  </div>
</div>',
       mode, `latex', `% End subsection
       ')'
)


define(`SCHOOL1',`__RDFA_UTEXAS')
define(`MAJOR1',`__RDFA_MIS')
define(`MINOR1',`__RDFA_DUTCH_MINOR')
define(`SCHOOL1_DEG_AWARDED',`Bachelor of Business Administration')
define(`SCHOOL1_DESC',
``A multi-disciplinary approach that blends a base in business
administration with a focus in building enterprise IT systems.  Attention is
paid to programming basics, project management, and consulting.  The program
culminates with a real-world project delivered to an Austin community
organization.'')


define(`SCHOOL2',`__RDFA_UTEXAS')
define(`MAJOR2',`Philosophy')
define(`MINOR2',`MINOR1')
define(`SCHOOL2_DEG_AWARDED',`Bachelor of Arts')
define(`SCHOOL2_DESC',
``A classic liberal arts program in philosophy with focus on pre-Socratic
Greek philosophy, German Idealism (Hegel), and Philosophy of science.
'')


divert`'dnl

ifelse(mode, `latex', ``\section{Education}'', ``<h1>Education</h1>'')


ifelse(mode, `latex', `
', `
<div id="education_statement" >
  educ(format_place(`SCHOOL1'),format_job(`MAJOR1'),`MINOR1',format_dates(`RES_EDUCATION_MYDATES'),`SCHOOL1_DEG_AWARDED', `SCHOOL1_DESC')
  educ(format_place(`SCHOOL2'),format_job(`MAJOR2'),`MINOR2',format_dates(`RES_EDUCATION_MYDATES'),`SCHOOL2_DEG_AWARDED', `SCHOOL2_DESC')
</div>
')
