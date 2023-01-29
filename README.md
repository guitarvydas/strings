# Strings that allow nesting.

run: make

This is a macro processor that looks only at strings delimited by “ and ” quotes and leaves everything else alone.

The source file, test.txt, contains some strings with string nested inside of them.

The parser - built using Ohm-JS - parses the strings, and the FAB - fabricator - tool converts the strings into escaped strings.

You should be able to write code in any supported language that contains “” strings and macro-process them into a form that is acceptable to the compiler for that language.

A Makefile would contain a pipeline - (1) pre-process the source, then (2) compile the preprocessed result - instead of a single invocation of the compiler.

I would imagine that this tool would be cloned (instead of being parameterized) once for every target language, like JavaScript and Python and C and ...  
