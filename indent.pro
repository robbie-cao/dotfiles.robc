// Setup for indent
//
// Save it to:
//   ~/.indent.pro
// Run indent in vim:
//   :!indent %
// Batch in shell:
//   $ find . -iname '*.[ch]' | xargs indent
//
// Linux coding style
// -nbad -bap -nbc -bbo -hnl -br -brs -c33 -cd33 -ncdb -ce -ci4
// -cli0 -d0 -di1 -nfc1 -i8 -ip0 -l80 -lp -npcs -nprs -npsl -sai
// -saf -saw -ncs -nsc -sob -nfca -cp33 -ss -ts8 -il1

-nbad
-bap        // a blank line is forced after every procedure body
-nbc        // not force newlines after commas in declarations
-bbo        // prefer to break long lines before boolean operators
-hnl        // break long lines at the position of newlines in the input
-br         // braces on line with if, etc
-brs        // braces on struct declaration line
-blf        // put braces on line following function definition line
-ce
-c33
-cd33
-cp33
-ncdb
-d0
-di1
-nfc1
-ci4        // continuation indent of n spaces
-cli4       // case label indent of n spaces
-i4         // indentation level to n spaces
-ts4        // tab-size to be n
-nut        // use spaces instead of tabs
-ip0
-l120       // maximum line length for non-comment lines to 120
-lp
-npcs       // not put space after the function in function calls
-nprs       // not put a space after every '(' and before every ')'
-npsl       // put the type of a procedure on the same line as its name
-sai        // put a space after each if
-saf        // put a space after each for
-saw        // put a space after each while
-ncs
-sc         // put '*' character at the left of comments
-sob
-nfca
-ss         // one-line for and while statements, force a blank before the semicolon
-il1
