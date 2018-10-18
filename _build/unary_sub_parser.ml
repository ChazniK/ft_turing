(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   unary_sub_parser.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: ckatz <marvin@42.fr>                       +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2018/10/18 09:17:27 by ckatz             #+#    #+#             *)
(*   Updated: 2018/10/18 11:57:27 by ckatz            ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let read_json file_name =

    (* Read the Json file *)
    let json = Yojson.Basic.from_file file_name in

    (* Locally open Json manipulation functiions *)
    let open Yojson.Basic.Util in

    let index_0 = json |> member "transitions" |> List.map scanright ~f:(fun json -> member "read" json |> to_string) in

    print_endline ("read: " ^ index_0)
    (*let name = json |> member "name" |> to_string in
    let alphabet = json |> member "alphabet" |> to_list |> filter_string in
    let blank = json |> member "blank" |> to_string in
    let states = json |> member "states" |> to_list |> filter_string in
    let initial = json |> member "initial" |> to_string in
    let finals = json |> member "finals" |> to_list |> filter_string in

    (* Print results of parsing *)
    begin
        print_endline ("name: " ^ name);

        print_string ("alphabet: "); 
        for i = 0 to ((List.length alphabet) - 1) do
            print_string ((List.nth alphabet i) ^ " " )
        done;
        print_char '\n';

        print_endline ("blank: " ^ blank);
       
        print_string ("states: "); 
        for i = 0 to ((List.length states) - 1) do
            print_string ((List.nth states i) ^ " ")
        done;
        print_char '\n';
        
        print_endline ("initial: " ^ initial);

        print_endline ("finals: " ^ (List.hd finals))
    end*)

let main () =
    let args = Sys.argv in
    if ((Array.length args) <> 2) then
        print_endline "Invalid number of arguements - requires executable and then filename"
    else
        read_json args.(1)

let () = main ()

