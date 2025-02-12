(*
    Homework 1
*)
(* aca es donde se hace el binding de variables *)
fun is_older ((y1, m1, d1): int * int * int, (y2, m2, d2): int * int * int) : bool =
    if y1 < y2 then true
    else if y1 > y2 then false
    else if m1 < m2 then true
    else if m1 > m2 then false
    else d1 < d2;


fun pow (x:int, y:int) = (* correct only for y >= 0 *)
    (* recursivo hasta que llega a cero *)
    if y=0
        then 1
    else x * pow(x,y-1)
(*
    traza al llamar pow(2, 5)
    pow (2, 5) = 2 * pow(2, 4)
            pow (2, 4) = 2 * pow(2, 3)
                pow (2, 3) = 2 * pow(2, 2)
                    pow (2, 2) = 2 * pow(2, 1)
                        pow (2, 1) = 2 * pow(2, 0)
                        pow (2, 0) = 1
                    pow (2, 1) = 2 * 1 = 2
                pow (2, 2) = 2 * 2 = 4
            pow (2, 3) = 2 * 4 = 8
        pow (2, 4) = 2 * 8 = 16
    pow (2, 5) = 2 * 16 = 32
*)

fun cube (x:int) = 
            pow(x, 3);

val cubo = cube (3);
(*
    traza al llamar a cube(3)
    cube(3) = pow(3,3)
            pow(3,3) = 3 * pow(3,2)
                pow(3,2) = 3 * pow(3,1)
                    pow(3,1) = 3 * pow(3,0)
                        pow(3,0) = 1
                    pow(3,1) = 3 * 1 = 3
                pow(3,2) = 3 * 3 = 9
            pow(3,3) = 3 * 9 = 27
    cube(3) = 27
*)

val test1 = is_older ((2025, 5, 10),(2023, 5, 11)) = true;

val potencia = pow (2, 5);

(*homework2*)
fun number_in_month (dates: (int * int * int) list, month: int) : int =
    ;
val test2 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1






