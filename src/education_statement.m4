define(`educ',
`ifelse(mode, `html',
`
ifdef(`do_rdfa',`<!-- BEGIN CONTAINER DIV FOR RDFa -->
<div rel="cv:hasEducation">')
<!-- BEGINNING DIV for $3 -->
<div class="educational_inst"`'ifdef(`do_rdfa', ` href="[_:translit(`$2',`<>"" :/"',`-------')]" typeof="cv:Education"')>
  <p class="school_and_dates">
    <span class="schoolname">$1</span>
		<br/>
    <span class="major_styling">Major:</span>  <span class="major">$2</span>
		<br/>
    <span class="minor_styling">Minor:</span>  <span class="minor">$3</span>
    <br/>
    <span class="dates_styling">Dates:</span>  <span class="dates">$4</span>
  </p>
  <p class="deg_awarded">
  $5
  </p>
  <p ifdef(`do_rdfa',` property="cv:eduDescription"')`'>
  $6
  </p>
</div>
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
</div>',
       mode, `latex', `% End subsection
\vspace{0.02in}
$5\\

\noindent`' $6
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

define(`SCHOOL3',``__RDFA_RUL'')
define(`MAJOR3',`Dutch')
define(`MINOR3',`Philosophy of Science')
define(`SCHOOL3_DEG_AWARDED',`Study Abroad Programe')
define(`SCHOOL3_DESC',
``During a one-year study abroad term I studied advanced classes in Dutch
speaking, writing, grammar, and composition.  I also took 3 classes in the
faculty of Philosophy: Rise of Scientific Europe, Seminar on Scientific
Revolutions, and Rationality of Emotions.
'')


divert`'dnl

ifelse(mode, `latex', ``\section*{Education}'', ``<h2>Education</h2>'')

ifelse(mode, `latex', `
	educ(format_job(`SCHOOL1'),format_place(`MAJOR1'),`MINOR1',format_dates(`__RDFA_RES_EDUCATION_MYDATES'),`SCHOOL1_DEG_AWARDED', `SCHOOL1_DESC')
	educ(format_job(`SCHOOL2'),format_place(`MAJOR2'),`MINOR2',format_dates(`__RDFA_RES_EDUCATION_MYDATES'),`SCHOOL2_DEG_AWARDED', `SCHOOL2_DESC')
	educ(format_job(`SCHOOL3'),format_place(`MAJOR3'),`MINOR3',format_dates(`__RDFA_RUL_EDUCATION_MYDATES'), , `SCHOOL3_DESC')
', `
<div id="education_statement">
  educ(format_place(`SCHOOL1'),format_job(`MAJOR1'),`MINOR1',format_dates(`__RDFA_RES_EDUCATION_MYDATES'),`SCHOOL1_DEG_AWARDED', `SCHOOL1_DESC')
  educ(format_place(`SCHOOL2'),format_job(`MAJOR2'),`MINOR2',format_dates(`__RDFA_RES_EDUCATION_MYDATES'),`SCHOOL2_DEG_AWARDED', `SCHOOL2_DESC')
  educ(format_place(`SCHOOL3'),format_job(`MAJOR3'),`MINOR3',format_dates(`__RDFA_RUL_EDUCATION_MYDATES'), , `SCHOOL3_DESC')
</div>
')
