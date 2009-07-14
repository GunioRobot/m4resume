ifelse(mode, `latex', `include(`src/template_latex.m4')',
       mode, `html',  `include(`src/template_html.m4')'
       )dnl
divert`'dnl

