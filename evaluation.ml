open Fjava
open Utils

excpetion NotImplmented
exception Stuck

(* value is New(value) *)
let rec is_value e =
  let rec is_value' el' = 
    match el' with
    | [] -> true
    | e_head::e_tails ->
      (is_value e_head) && is_value' e_tails
  in

  match e with
  | New (t, el) ->
    if is_value' el
    then true
    else false
  | _ -> false

(* substitution : [dl/xl , new C(el)/this] e0 *)
let rec substitute dl xl ce e0 = 
  let rec substitute_list dl xl ce el = 
    match el with
    | [] -> []
    | e_head::e_tails ->
      let e_head' = substitute dl xl ce e_head in
      [e_head'] @ (substitute_list dl xl ce e_tails)
  in

  let rec substitute' dl xl ce e0 =
    match e0 with
    | Var x -> raise NotImplmented
    | Field (e, f) -> raise NotImplmented
    | Method (e, m, el) -> raise NotImplmented
    | New (c, el) -> raise NotImplmented
    | Cast (t, e) -> raise NotImplmented
  in

  substitute' dl xl ce e0


(* step : program -> program *)
let rec step p =
  let rec step' p = 
    let rec step_list ct el = 
      match el with
      | [] -> []
      | e_head::e_tails ->
        if is_value e_head 
        then 
          [e_head] @ step_list ct e_tails
        else 
          let (_ , e_head') = step' (ct, e_head) in
          [e_head'] @ (step_list ct e_tails)
    in

    match p with
    | (ct, exp) -> 
    (
      match exp with 
      | Var _ -> raise Stuck
      | Field (e, f) -> raise Stuck
      | Method (e, m_n, el) ->  raise Stuck
      | New (t, el) ->  raise Stuck
      | Cast (d_tp, e) ->  raise Stuck
    )
  in

  step' p