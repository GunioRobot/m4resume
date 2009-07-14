divert
RES_HTML_DECLARATION
RES_HTML_HEAD
divert(`2')
</html>
divert
<body>
ifdef(`RES_FORMAT_DO_PERSONAL_STATEMENT', `include(`src/personal_statement')')
  <div class="achivements">
    include(`src/demo.m4')
  </div>
</body>
undivert(`2')dnl
