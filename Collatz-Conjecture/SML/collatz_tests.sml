(* Tests for the main function *)

val collatz_test0 = collatz  1 = SOME 0
val collatz_test1 = collatz  9 = SOME 19
val collatz_test2 = collatz 12 = SOME 9
val collatz_test3 = collatz 19 = SOME 20
val collatz_test4 = collatz 27 = SOME 111
val collatz_test5 = collatz 931386509544713451 = SOME 2283
