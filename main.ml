

module type Wut_def = sig
  type t
  val mk : int -> t
  val (+) : t -> t -> t
  val ( * ) : t -> t -> t
  val to_string : t -> string
end;;

module Wut : Wut_def = struct
  type t = {m:int;n:int}
  let mk (i : int) : t  = {m=i;n=i}
  let (+) x y = {m=x.m+y.m;n=x.n+y.n}
  let ( * ) x y ={m=x.m*y.m;n=x.n*y.n} 
  let to_string x = "(" ^ (string_of_int x.m) ^ ", " ^ (string_of_int x.n) ^ ")"
end;;




let m = Wut.mk 5
let n = Wut.mk 6

let k = Wut.(

  (m + n + n + m + n)*m
  
  )

let () = print_endline (Wut.to_string k)
