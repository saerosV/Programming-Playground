(* The Collatz Conjecture: 
 * "Start with any positive integer n. Then each term is obtained from the
 * previous term as follows: if the previous term is even, the next term is one
 * half of the previous term. If the previous term is odd, the next term is 3
 * times the previous term plus 1. The conjecture is that no matter what value
 * of n, the sequence will always reach 1 *)

(* IntInf.int -> int option
 * Tail recursive function, that calculates how many steps it takes for a given
 * integer (n), following the Collatz Conjecture formula, to reach 1.
 *)

(* IntInf is used in order to calculate using bigger numbers, e.g.,
 * "931386509544713451" (2283 steps).*)  
fun collatz (n: IntInf.int) =
    (* The conjecture is calculated with positive integers only.
     * Both negative numbers and zero will return NONE.*)
    if n < 1 
    then NONE 
    else 
        let
            fun helper n steps =
                case n of
                (* Base case. 
                 * Returns "SOME number of steps" once n becomes one.*)
                    1 => SOME steps
                  | n  => case n mod 2 of
                              0 => helper (n div 2) (steps + 1)
                            | _ => helper ((n * 3) + 1) (steps + 1)
        in
            helper n 0
        end
