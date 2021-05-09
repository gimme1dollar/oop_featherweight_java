open Fjava
open Utils

exception TypeError

(* subtyping *)
let rec is_subtype ct c_tp d_tp = raise TypeError

(* typing context *)
let tp_context = []

let insert_var_in_context ctx v =
  ctx @ [v]

let rec tp_var_in_context ctx x =
  match ctx with
  | [] -> raise TypeError
  | (tp, name)::ctx_tails ->
    if name = x
    then
      tp
    else tp_var_in_context ctx_tails x


(* typeOf : program -> tp *)
let rec typeOf p = 
  let rec typeOf_e p ctx =
    match p with
    | (ct, exp) ->
      (
        match exp with
        | Var x -> raise TypeError
        | Field (e0, f) -> raise TypeError
        | Method (e0, m, el) -> raise TypeError
        | New (c_tp, el) -> raise TypeError
        | Cast (c, e) -> raise TypeError
      )
  in

  let rec is_method_okay ct m_dec c = raise TypeError
  let rec is_m_dec_list_okay ct m_dec_list c = raise TypeError
  let rec is_class_okay ct class_dec = raise TypeError
  let rec is_okay ct p = raise TypeError

  match p with
  | (ct, exp) ->
    (
    try 
      if is_okay ct p
      then typeOf_e p tp_context
      else raise TypeError
    with _ ->
      raise TypeError
    )