divert(-44)
ifelse(`tskill == technical skill')

define(`tskill',
`ifelse(mode, `html',
`
ifdef(`do_rdfa',`<!-- BEGIN CONTAINER DIV FOR RDFa -->
<div rel="cv:hasSkill">')
<!-- BEGINNING DIV for $3 -->
<div class="educational_inst"`'ifdef(`do_rdfa', ` href="[_:translit(`$2',`<>"" :/"',`-------')]" typeof="cv:Skill"')>
<span property="cv:skillName">`$1'</span>
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

define(`iterate_skill',
  `ifelse($#, 0, ,
          $#, 1, $1,
          `{$1}-iterate_skill(shift($@))'
)')

divert`'dnl

ifelse(mode, `latex', ``\section{Skills}'', ``<h1>Skills</h1>'')

ifelse(mode, `latex', `
', `
<div id="education_statement">
	<div id="five_skilllevel" property="cv:skillLevel" content="5">
    iterate_skill(`un', `deux')	
  </div>
</div>
')
