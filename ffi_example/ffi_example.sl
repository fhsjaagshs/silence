#!../dist/build/silence/silence -f

(import "../stdlib.sl")

(func 'gettype (a) ((foreign "example.dylib" 'showtype) a))
(func 'print-number (a) ((foreign "example.dylib" 'print_number) a))
  
(print "Testing FFI...\n")
(println (show (gettype 1)))
(println (show (gettype 'atomsarecool)))
(print-number (/ 2 5))