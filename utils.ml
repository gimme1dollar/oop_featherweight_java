excpetion NotImplmented
exception Stuck

(* Utils *)
let rec is_x x l =
  match l with
  | [] -> false
  | (x_tp, x_str)::t -> 
    (x = x_str) || is_x x t

let rec get_i x l =
  match l with
  | [] -> raise Stuck
  | (x_tp, x_str)::t -> 
    if x = x_str then 0 else 1 + (get_i x t)

let rec get_first_l l = 
  match l with
  | [] -> []
  | (f,s)::l_tails -> [f] @ (get_first_l l_tails)

let rec get_second_l l = 
  match l with
  | [] -> []
  | (f,s)::l_tails -> [s] @ (get_first_l l_tails)

let rec is_same_list xl yl = 
  match xl with
  | [] -> 
    (
      match yl with
      | [] -> true
      | yh::yt -> false
    )
  | xh::xt ->
    (
      match yl with
      | [] -> false
      | yh::yt ->
        (xh = yh) && (is_same_list xt yt)
    )


(* Auxiliary functions *)
let rec c_lookup ct c_tp = raise NotImplmented

let rec m_lookup m methods = raise NotImplmented
      
let rec f_lookup ct c_tp = raise NotImplmented

let mt_lookup m ct c_tp = raise NotImplmented

let mb_lookup m ct c_tp = raise NotImplmented

let o_lookup m ct d cl c0 = raise NotImplmented
