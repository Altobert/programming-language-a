(* Programming Languages, Dan Grossman *)
(* Section 1: List Functions *)

(* Functions taking or producing lists *)

fun sum_list (xs : int list) =
    if null xs
    then 0
    else hd(xs) + sum_list(tl(xs))

(* sum_list([1,2,3]); (* 6 *) *)

fun countdown (x : int) =
    if x=0
    then []
    else x :: countdown(x-1)

(* countdown(5); (* [5,4,3,2,1] *) *)

fun append (xs : int list, ys : int list) = (* part of the course logo :) *)
    if null xs
    then ys
    else hd(xs) :: append(tl(xs), ys)

(*append([1,2,3],[4,5,6]); (* [1,2,3,4,5,6] *)*)


(* More functions over lists, here lists of pairs of ints *)

fun sum_pair_list (xs : (int * int) list) =
    if null xs
    then 0
    else #1 (hd(xs)) + #2 (hd(xs)) + sum_pair_list(tl(xs))

(* sum_pair_list([(1,2),(3,4),(5,6)]); *) (* 21 *)

fun firsts (xs : (int * int) list) =
    if null xs
    then []
    else (#1 (hd xs))::(firsts(tl xs))

(* firsts([(1,2),(3,4),(5,6)]); *) (* [1,3,5] *)

fun seconds (xs : (int * int) list) =
    if null xs
    then []
    else (#2 (hd xs))::(seconds(tl xs))
(*seconds([(1,2),(3,4),(5,6)]); (* [2,4,6] *)*)


fun sum_pair_list2 (xs : (int * int) list) =
    (sum_list (firsts xs)) + (sum_list (seconds xs))
(* sum_pair_list2([(1,2),(3,4),(5,6)]); (* 21 *)   *)


(* More functions over lists, here lists of lists of ints *)

