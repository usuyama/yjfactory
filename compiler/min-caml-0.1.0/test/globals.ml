(*-*-coding:euc-jp-*-*)
open MiniMLRuntime;;

(**************** �����Х��ѿ������ ****************)

(* ���֥������ȤθĿ� *)
let n_objects = Array.create 1 0
in
(* ���֥������ȤΥǡ����������٥��ȥ�ʺ���60�ġ�*)
let objects = 
  let dummy = Array.create 0 0.0 in
  Array.create 60 (0, 0, 0, 0, dummy, dummy, false, dummy, dummy, dummy, dummy)
in
(* Screen ���濴��ɸ *)
let screen = Array.create 3 0.0 in
(* �����κ�ɸ *)
let viewpoint = Array.create 3 0.0 in
(* ���������٥��ȥ� (ñ�̥٥��ȥ�) *)
let light = Array.create 3 0.0 in
(* ���̥ϥ��饤�ȶ��� (ɸ��=255) *)
let beam = Array.create 1 255.0 in
(* AND �ͥåȥ�����ݻ� *)
let and_net = Array.create 50 (Array.create 1 (-1)) in
(* OR �ͥåȥ�����ݻ� *)
let or_net = Array.create 1 (Array.create 1 (and_net.(0))) in

(* �ʲ�����Ƚ��롼������֤��ͳ�Ǽ�� *)
(* solver �θ��� �� t ���� *)
let solver_dist = Array.create 1 0.0 in
(* ������ľ����ɽ�̤Ǥ����� *)
let intsec_rectside = Array.create 1 0 in
(* ȯ�����������κǾ��� t *)
let tmin = Array.create 1 (1000000000.0) in
(* �����κ�ɸ *)
let intersection_point = Array.create 3 0.0 in
(* ���ͤ������֥��������ֹ� *)
let intersected_object_id = Array.create 1 0 in
(* ˡ���٥��ȥ� *)
let nvector = Array.create 3 0.0 in
(* �����ο� *)
let texture_color = Array.create 3 0.0 in

(* �׻���δ��ܼ������٤��ݻ� *)
let diffuse_ray = Array.create 3 0.0 in
(* �����꡼�����������뤵 *)
let rgb = Array.create 3 0.0 in

(* ���������� *)
let image_size = Array.create 2 0 in
(* �������濴 = ������������Ⱦʬ *)
let image_center = Array.create 2 0 in
(* 3������Υԥ�����ֳ� *)
let scan_pitch = Array.create 1 0.0 in

(* judge_intersection��Ϳ����������� *)
let startp = Array.create 3 0.0 in
(* judge_intersection_fast��Ϳ����������� *)
let startp_fast = Array.create 3 0.0 in

(* ���̾��x,y,z����3�������־������ *)
let screenx_dir = Array.create 3 0.0 in
let screeny_dir = Array.create 3 0.0 in
let screenz_dir = Array.create 3 0.0 in

(* ľ�ܸ����פǻȤ��������٥��ȥ� *)
let ptrace_dirvec  = Array.create 3 0.0 in

(* ���ܸ�����ץ�󥰤˻Ȥ������٥��ȥ� *)
let dirvecs = 
  let dummyf = Array.create 0 0.0 in
  let dummyff = Array.create 0 dummyf in
  let dummy_vs = Array.create 0 (dummyf, dummyff) in
  Array.create 5 dummy_vs
in
(* ���������������Ѥ������٥��ȥ� *)
let light_dirvec =
  let dummyf2 = Array.create 0 0.0 in
  let v3 = Array.create 3 0.0 in
  let consts = Array.create 60 dummyf2 in
  (v3, consts)
in
(* ��ʿ�̤�ȿ�;��� *)
let reflections =
  let dummyf3 = Array.create 0 0.0 in
  let dummyff3 = Array.create 0 dummyf3 in
  let dummydv = (dummyf3, dummyff3) in
  Array.create 180 (0, dummydv, 0.0)
in
(* reflections��ͭ�������ǿ� *) 

let n_reflections = Array.create 1 0
in
