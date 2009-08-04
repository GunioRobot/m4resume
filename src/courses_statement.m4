divert(-44)
ifelse(`tskill == technical skill')

define(`acourse',
`ifelse(mode, `html',
`
ifdef(`do_rdfa',`<!-- BEGIN CONTAINER DIV FOR RDFa -->
<div rel="cv:hasCourse">')
<!-- BEGINNING DIV for $3 -->
  <div class="educational_inst"`'ifdef(`do_rdfa', ` href="[_:translit(`$2',`<>"" :/"',`-------')]" typeof="cv:Course"')>
 <h3 class="course_title" property="cv:courseTitle" rel="cv:organized_by" href="`$4'">`$1'</h3>
 Taken:  <span property="cv:eduStartDate">`$2'</span><span property="cv:eduEndDate" content="`$3'" /> <a rel="cv:courseURL" href="`$6'">`$6'</a><span property="cv:isCertification" content="`$5'" />
	<p>`$7'</p>
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
       ')'
)

divert`'dnl

ifelse(mode, `latex', ``\section{Courses}'', ``<h2>Courses</h2>'')

ifelse(mode, `latex', `
', `
<div id="courses_statement">

acourse(`Beginning Cocoa Bootcamp',
`2005-02',
`2005-02',
`http://bignerdranch.com',
`0',
`http://bignerdranch.com/classes/beginning_cocoa.shtml',
`Intensive 5-day training course covering the basics of Cocoa / Objective-C programming on Mac OSX.')

acourse(`Ruby on Rails Bootcamp',
`2006-02',
`2006-02',
`http://bignerdranch.com',
`0',
`http://bignerdranch.com/classes/beginning_ruby_on_rails.shtml',
`Intensive 5-day training course covering the basics of Ruby on Rails development.')

acourse(`Red Hat Certified Engineer Bootcamp',
`2003-05',
`2003-05',
`http://redhat.com',
`1',
`http://bignerdranch.com/classes/beginning_ruby_on_rails.shtml',
`Intensive 5-day training course covering Linux administration.')


</div>
')
