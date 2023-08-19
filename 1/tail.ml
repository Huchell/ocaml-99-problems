let rec last list =
    match list with
    | [a] -> Some a
    | [] -> None
    | _ :: tail -> last tail
;;

let first = last ["a"; "b"; "c"; "d"];;
let second = last [];;

match first with
    | Some x -> print_string x
    | None -> print_string "None"
;;
match second with
    | Some x -> print_string x
    | None -> print_string "None"
;;
