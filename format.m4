traceon
define(`generate_formatter',
  `define(`format_$1',
    `ifdef(`wrap_$1', 
      `ifelse( wrap_$1,  `i', `\textit{$`'1}}',
               wrap_$1,  `b', ``\textbf{$`1'}}'',
               wrap_$1,  `s', ``\textsf{$`1'}}'',
       )')')')
generate_formatter(`place')
format_place(`Austin')
divert(-1)
#define(`format_place',
#  `ifdef(`wrap_place', 
#    `ifelse( wrap_place,  `i', ``\textit{$1}'',
#             wrap_place,  `b', ``\textbf{$1}'',
#             wrap_place,  `s', ``\textsf{$1}'',
#     )')')dnl

define(`format_job',
  `ifdef(`wrap_job', 
    `ifelse( wrap_job,  `i', ``\textit{$1}'',
             wrap_job,  `b', ``\textbf{$1}'',
             wrap_job,  `s', ``\textsf{$1}'',
     )')')dnl

define(`format_dates',
  `ifdef(`wrap_dates', 
    `ifelse( wrap_dates,  `i', ``\textit{$1}'',
             wrap_dates,  `b', ``\textbf{$1}'',
             wrap_dates,  `s', ``\textsf{$1}'',
     )')')dnl
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Actual Execution
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
divert`'dnl
format_place(`Austin')
format_job(`M4 Monkey')
format_dates(`too long to remember - just about now')
