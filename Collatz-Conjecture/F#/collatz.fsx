let collatz n =
    if n < 1
    then None
    else let rec helper n steps =
                match n with
                | 1 -> Some steps
                | n -> match n % 2 with
                        | 0 -> helper (n / 2) (steps + 1)
                        | _ -> helper ((n * 3) + 1) (steps + 1)
         helper n 0 