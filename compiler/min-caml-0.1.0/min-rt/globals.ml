open MiniMLRuntime;;

(**************** �����Х��ѿ������ ****************)

(* ���֥������ȤΥǡ����������٥��ȥ�ʺ���60�ġ�*)
let objects = 
  let dummy = Array.create 0 0.0 in
  Array.create (60) 
    (0, 0, 0, 0, 
     dummy, dummy,
     false, dummy, dummy,
     dummy)

(* [| x�����������ܿ� , y�����������ܿ� |] *)
let size = Array.create 2 128

(* �¹Ի����ץ����: �ǥХå����Ϥ�̵ͭ *)
let dbg = Array.create 1 true
(* Screen �κ�ɸ *)
let screen = Array.create 3 0.0
(* �����κ�ɸ (offset �ʤ�) *)
let vp = Array.create 3 0.0
(* �����κ�ɸ (screen ����ʬ�� offset ����) *)
let view = Array.create 3 0.0
(* ���������٥��ȥ� (ñ�̥٥��ȥ�) *)
let light = Array.create 3 0.0
(* �����꡼��β�ž����: ���Ѵؿ����ͤ��ݻ� *)
let cos_v = Array.create 2 0.0
let sin_v = Array.create 2 0.0
(* ���̥ϥ��饤�ȶ��� (ɸ��=255) *)
let beam = Array.create 1 255.0
(* AND �ͥåȥ�����ݻ� *)
let and_net = Array.create 50 (Array.create 1 (-1))
(* OR �ͥåȥ�����ݻ� *)
let or_net = Array.create 1 (Array.create 1 (and_net.(0)))

(* reader *)
let temp = Array.create 14 0.0 (* read_nth_object ��κ���ѿ� *)
let cs_temp = Array.create 16 0.0

(* solver *)
(**** Callee �Ȥ��̿��ѥ����Х��ѿ� ****)
(* ���� �� t ���� *)
let solver_dist = Array.create 1 0.0

(* ������������ *)
let vscan = Array.create 3 0.0
(* ������ľ����ɽ�̤Ǥ����� *)
let intsec_rectside = Array.create 1 0
(* ȯ�����������κǾ��� t *)
let tmin = Array.create 1 (1000000000.0)
(* �����κ�ɸ *)
let crashed_point = Array.create 3 0.0
(* ���ͤ������֥������� *)
let crashed_object = Array.create 1 0
(* 1�Ĥ� AND �ͥåȥ���ˤĤ��Ƥν�λ�ե饰 *)
let end_flag = Array.create 1 false
(* �ȥ졼�������� *)
let viewpoint = Array.create 3 0.0
(* ˡ���٥��ȥ� *)
let nvector = Array.create 3 0.0
(* �����꡼�����������뤵 *)
let rgb = Array.create 3 0.0
(* �����ο� *)
let texture_color = Array.create 3 0.0

(* ���֥��������濴�����ˤ��������٥��ȥ� *)
let solver_w_vec = Array.create 3 0.0

(* check_all_inside �Ѱ����٥��ȥ� *)
let chkinside_p = Array.create 3 0.0

(* is_outside ���������� (�濴��ʬ) �٥��ȥ� *)
let isoutside_q = Array.create 3 0.0

(* �����Х���ڤ�Ф����������ѿ� *)
(* nvector *)
let nvector_w = Array.create 3 0.0

(* main *)
let scan_d = Array.create 1 0.0
let scan_offset = Array.create 1 0.0
let scan_sscany = Array.create 1 0.0
let scan_met1 = Array.create 1 0.0
let wscan = Array.create 3 0.0
