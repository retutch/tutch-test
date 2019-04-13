# Tests can be matched at the beginning of a file using the regular expression
# /(% test.*\n)*/; the matching string then matches against this grammar.

Tests -> ("% test " _ Spec _ ("\r" | "\n" | "\r\n" | "\n\r")):+
Spec  -> "error"
       | "reject"
       | "pass"

_     -> " ":*
