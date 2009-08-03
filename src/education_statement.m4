define(`educ',
`ifelse(mode, `html',
`
ifdef(`do_rdfa',`<!-- BEGIN CONTAINER DIV FOR RDFa -->
<div rel="cv:hasEducation">')
<!-- BEGINNING DIV for $3 -->
<div class="educational_inst"`'ifdef(`do_rdfa', ` href="[_:translit(`$2',`<>"" :/"',`-------')]" rel="cv:Education"  ')>
  <p class="school_and_dates">
    <span class="schoolname">$1</span>
    <span class="major">$2</span>
    <span class="minor">$3</span>
    <span class="dates">$3</span>
  </p>',
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
ifelse(mode,`html', ``  <ul>'', mode, `latex', ``\begin{itemize}'')
  make_line_items(reverse(shift(shift(shift($@)))))
ifelse(mode,`html', `  </ul>',
       mode, `latex', `\end{itemize}')
ifelse(mode,`html', `<!-- CLOSING DIV for $3 -->
  </div>
</div>',
       mode, `latex', `% End subsection
       ')'
)

ifelse(mode, `latex', `
  \section*{ Skills }
   \begin{itemize}
     \item \textbf{Martial Arts}: Bo Staff Skills, Num-Chuk Skills
     \item \textbf{Piratical Skills}: Can hold my breath for 10 minutes
     \item \textit{Software Development}: Git, M4, Ruby
   \end{itemize}

', `
<div id="education_statement" >
  educ(`foo',`bar',`bin',`bat',`larry')
</div>
')
