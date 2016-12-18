

module type Wut_def = sig
  type t
  val mk : int -> t
  val (+) : t -> t -> t
  val ( * ) : t -> t -> t
  val to_string : t -> string
end;;

module Wut : Wut_def = struct
  type t = int
  let mk (i : int) : t  = i
  let (+) x y = x+y
  let ( * ) x y = x*y
  let to_string x = string_of_int x
end;;




let m = Wut.mk 5
let n = Wut.mk 6

let k = Wut.(

  (m + n + n + m + n)*m
  
  )

let () = print_endline (Wut.to_string k)
