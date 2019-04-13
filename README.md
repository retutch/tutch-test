Tutch Testing Format
====================

This documents the format of Tutch specifications.

A Tutch test is a file ending in `.tut` where one or more
lines at the beginning of the file begin with `% test`.

```
<test> ::= % test <spec> \n
<spec> ::= error     - fails to parse
           reject    - fails to check
           pass      - succeeds
```

Here are three examples:

```
% test error
% missing 'begin' and 'end' keywords

proof mp: A & (A=>B) => B =
[ A & (A=>B);
  A;
  A=>B;
  B ];
A & (A=>B) => B;
```

```
% test reject
% Skips a few steps

proof mp: A & (A=>B) => B =
begin
[ A & (A=>B);
  B ];
A & (A=>B) => B
end;
```

```
% test pass

proof mp: A & (A=>B) => B =
begin
[ A & (A=>B);
  A;
  A=>B;
  B ];
A & (A=>B) => B
end;
```
