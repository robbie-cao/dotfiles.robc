// Setup for indent
//
// Save it as ~/.indent.pro
// Run indent in vim:
//   :!indent %
//
// Linux coding style
// -nbad -bap -nbc -bbo -hnl -br -brs -c33 -cd33 -ncdb -ce -ci4
// -cli0 -d0 -di1 -nfc1 -i8 -ip0 -l80 -lp -npcs -nprs -npsl -sai
// -saf -saw -ncs -nsc -sob -nfca -cp33 -ss -ts8 -il1

-nbad
-bap        // a blank line is forced after every procedure body
-nbc        // not force newlines after commas in declarations
-nbbo       // not prefer to break long lines before boolean operators
-hnl        // break long lines at the position of newlines in the input
-br         // braces on line with if, etc
-brs        // braces on struct declaration line
-c33
-cd33
-cp33
-ncdb
-ce
-ci4
-cli0
-d0
-di1
-nfc1
-i4         // indentation level to 4 spaces
-ts4        // tab-size to be 4
-nut        // use spaces instead of tabs
-ip0
-l120       // maximum line length for non-comment lines to 120
-lp
-npcs
-nprs
-npsl
-sai        // put a space after each if
-saf        // put a space after each for
-saw        // put a space after each while
-ncs
-nsc
-sob
-nfca
-ss         // one-line for and while statements, force a blank before the semicolon
-il1
