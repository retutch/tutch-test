# Tests can be matched at the beginning of a file using the regular expression
# /(% test.*\n)*/; the matching string then matches against this grammar.

Tests -> "% test " Spec "\n"
Spec  -> "error"
       | "reject"
       | "pass"
