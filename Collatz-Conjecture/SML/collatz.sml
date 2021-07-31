fun collatz (n: IntInf.int) =
    let
        fun helper n steps =
            case n of
                1 => SOME steps
              | n  => case n mod 2 of
                          0 => helper (n div 2) (steps + 1)
                        | 1 => helper ((n * 3) + 1) (steps + 1)
                        | _ => NONE
    in
        helper n 0
    end

val collatz_test0 = collatz  1 = SOME 0
val collatz_test1 = collatz  9 = SOME 19
val collatz_test2 = collatz 12 = SOME 9
val collatz_test3 = collatz 19 = SOME 20
val collatz_test4 = collatz 27 = SOME 111
val collatz_test5 = collatz 931386509544713451 = SOME 2283
