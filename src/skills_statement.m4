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
  <span property="cv:skillLevel" content="`$2'" />
  <span property="cv:skillLastUsed" content="`$3'" />
  <span property="cv:skillYearsExperience" content="`$4'" />
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

ifelse(mode, `latex', ``\section{Skills}'', ``<h1>Skills</h1>'')

ifelse(mode, `latex', `
', `
<div id="skills_statement">
	<div id="technical_skills">
     tskill(`Perl', `5', `Daily', `8')
     tskill(`Ruby', `4', `Presently', `3')
     tskill(`Rails', `3', `2009-02-13', `3' )
     tskill(`Cocoa', `2', `2005-06-20', `2' )
     tskill(`M4', `3', `Presently', `5' )
     tskill(`PHP', `4', `2007-03-26', `2' )
     tskill(`Java', `2', `2006-01-15', `2' )
     tskill(`git', `3', `Presently', `1' )
     tskill(`svn', `4', `Presently', `4' )
     tskill(`Semantic Web', `2', `Presently', `1' )
     tskill(`RDF', `1', `Presently', `1' )
     tskill(`RDFa', `1', `Presently', `1' )
     tskill(`Metadata', `2', `Presently', `2' )
     tskill(`HTML', `5', `Presently', `10' )
     tskill(`XHTML', `5', `Presently', `5' )
     tskill(`CSS', `4', `Presently', `3' )
     tskill(`XHTML+RDFa', `4', `Presentnly', `3' )
     tskill(`Javascript', `2', `2007-01-20', `2' )
     tskill(`Apache', `3', `2009-02-21', `7' )
     tskill(`Systems Administration', `3', `Presently', `7' )
     tskill(`Sendmail', `3', `Presently', `5' )
     tskill(`Shell Scripting', `5', `Presently', `10' )
     tskill(`Solaris Administration', `2', `2007-06-30', `6' )
     tskill(`Linux Administration', `5', `Presently', `8' )
     tskill(`mySQL', `2', `2009-02-15', `3' )
     tskill(`postgres', `2', `2009-02-15', `3' )
     tskill(`Internationalization(i18n)', `2', `2009-02-15', `1' )
     tskill(`Unicode', `2', `2009-02-15', `1' )
     tskill(`Ruby metaprogramming', `2', `2009-02-15', `1' )
     tskill(`Unit Testing', `3', `2009-02-15', `1' )
     tskill(`object-oriented design', `3', `Presently', `10' )
     tskill(`vim', `5', `Presently', `6' )
     tskill(`emacs', `3', `2004-10-15', `4' )
	</div>
  <div id="language_skills">
  </div>
</div>
')
