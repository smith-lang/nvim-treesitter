[
 "|"
 ">"
 "<"
 "+"
 "-"
 "*"
 "/"
 "?"
] @operator

[
 "not"
] @keyword.operator

[
 "fn"
] @keyword.function

[
 "struct"
] @keyword.type

[
 "if"
 "else"
] @keyword.conditional

[
 "for"
] @keyword.repeat

(integer_literal) @number

(float_literal) @number

(string_literal) @string

(boolean_literal) @boolean

(identifier) @variable

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  ":"
] @punctuation.delimiter

(function_call
    function: (identifier) @function.call)

(variable_definition
    pattern: (identifier) @function
    value: (function_definition))
