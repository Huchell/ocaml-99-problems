let rec last_two list =
    match list with
    | [] -> None
    | head::tail -> match tail with
        | [] -> None
        | [x] -> Some (head, x)
        | _ -> last_two tail
;;

let print a =
    match a with
    | Some (x, y) -> print_string (x ^ y)
    | None -> print_string "None"
;;

last_two ["a"; "b"; "c"; "d"] |> print;;
last_two ["a"] |> print;;

