[
    (greater)
    (less)
    (equal)
    (add_assign)
    (add)
    (subtract)
    (multiply)
    (divide)
    (in)
    (dot)
    (negative)
    (pointer)
    (option)
    "="
] @operator

[
    (not)
    (in)
    (or)
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

[
    (mut)
    "test"
] @keyword

[
    "i8"
    "i32"
    "i64"
    "u8"
    "u32"
    "u64"
    "f32"
    "f64"
    "bool"
    "str"
] @type.builtin

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
  "..="
  "..<"
  "..>"
  ".."
] @punctuation.delimiter

(function_call
    function: (expression
        (identifier) @function.call))

(variable_definition
    pattern: (pattern_expression
        (identifier) @function)
    value: (expression
        (function_definition)))

(variable_definition
    pattern: (pattern_expression
        (identifier) @type.definition)
    value: (expression
        (struct_definition)))

(struct_field
    type: (expression
        (identifier) @type))

(function_parameter
    type: (expression
        (identifier) @type))

(function_definition
    return_type: (expression
        (identifier) @type))

(unary_operation
    (array_literal)
    (expression
        (identifier) @type))

(unary_operation
    (option)
    (expression
        (identifier) @type))

(unary_operation
    (pointer)
    (expression
        (identifier) @type))

(comment) @comment @spell
