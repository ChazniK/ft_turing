(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   error_handling.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ckatz <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/18 15:21:42 by ckatz             #+#    #+#             *)
(*   Updated: 2018/10/18 18:34:07 by ckatz            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let in_list str lst =
    let len = List.length lst in
    let rec loop str lst index =
        if (index == len) then
            false
        else if ((List.nth lst index) = str) then
            true
        else
            loop str lst (index + 1)
    in loop str lst 0

let found_in_list str lst =
    List.mem str lst

let main () =
    let scanright = [
            ("read", ".", "to_state", "scanright", "write", ".", "action", "RIGHT");
            ("read", "1", "to_state", "scanright", "write", "1", "action", "RIGHT");
            ("read", "-", "to_state", "scanright", "write", "-", "action", "RIGHT");
            ("read", "=", "to_state", "eraseone", "write", ".", "action", "LEFT")
    ] in
    
    match (List.nth scanright 0) with (first, second, _, _, _, _, _, _) ->
        | asdad
        | asfafa
        | asfasf
        print_endline (first ^ ", " ^ second);
    match (List.nth scanright 0) with (_, _, first, second, _, _, _, _) ->
        print_endline (first ^ ", " ^ second);
    match (List.nth scanright 0) with (_, _, _, _, first, second, _, _) ->
        print_endline (first ^ ", " ^ second);
    match (List.nth scanright 0) with (_, _, _, _, _, _, first, second) ->
            print_endline (first ^ ", " ^ second)




    (*let transitions = [
        let scanright = [
            ("read", ".", "to_state", "scanright", "write", ".", "action", "RIGHT");
            ("read", "1", "to_state", "scanright", "write", "1", "action", "RIGHT");
            ("read", "-", "to_state", "scanright", "write", "-", "action", "RIGHT");
            ("read", "=", "to_state", "eraseone", "write", ".", "action", "LEFT")
        ];
        let eraseone = [
            ("read", "1", "to_state", "subone", "write", "=", "action", "LEFT");
			("read", "-", "to_state", "HALT", "write", ".", "action", "LEFT")
		]
    ]

    for i = 0 to ((List.length transitions) - 1) do
        for j = 0 to ((List.length transition.[i]) - 1) do
            print_endline

*)

    (*let alphabet =  [ "1"; "."; "-"; "=" ] in
    let blank =  "." in
    print_endline (string_of_bool (in_list blank alphabet));
    print_endline (string_of_bool (found_in_list blank alphabet))*)

let () = main ()
