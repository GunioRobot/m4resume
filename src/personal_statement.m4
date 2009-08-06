ifelse(mode, `latex', `
  \section*{Personal Statement}
  PERSONAL_STATEMENT_BODY
', `
<!-- Open div for personal_statement -->
<div id="personal_statement">
  <h2`'ifdef(`do_rdfa',` rel="cv:aboutPerson" href="CANDIDATE_ABOUT_URI"')>
    Personal Statement
  </h2>
  <p`'ifdef(`__RDFA_PERSONAL_STATEMENT', `__RDFA_PERSONAL_STATEMENT')`'>
    PERSONAL_STATEMENT_BODY
  </p>
	ifdef(`__RDFA_DIST_STATUS',`<p>__RDFA_DIST_STATUS</p>')
<!-- Close Div for personal statement -->
ifdef(`do_rdfa', ifdef(`PERSONAL_TARGET_BLOCK',`PERSONAL_TARGET_BLOCK'))

</div>
')
