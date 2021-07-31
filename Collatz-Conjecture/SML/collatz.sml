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
