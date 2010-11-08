(*-*-coding:euc-jp-*-*)
open MiniMLRuntime;;

(**************** グローバル変数の宣言 ****************)

(* オブジェクトの個数 *)
let n_objects = Array.create 1 0
in
(* オブジェクトのデータを入れるベクトル（最大60個）*)
let objects = 
  let dummy = Array.create 0 0.0 in
  Array.create 60 (0, 0, 0, 0, dummy, dummy, false, dummy, dummy, dummy, dummy)
in
(* Screen の中心座標 *)
let screen = Array.create 3 0.0 in
(* 視点の座標 *)
let viewpoint = Array.create 3 0.0 in
(* 光源方向ベクトル (単位ベクトル) *)
let light = Array.create 3 0.0 in
(* 鏡面ハイライト強度 (標準=255) *)
let beam = Array.create 1 255.0 in
(* AND ネットワークを保持 *)
let and_net = Array.create 50 (Array.create 1 (-1)) in
(* OR ネットワークを保持 *)
let or_net = Array.create 1 (Array.create 1 (and_net.(0))) in

(* 以下、交差判定ルーチンの返り値格納用 *)
(* solver の交点 の t の値 *)
let solver_dist = Array.create 1 0.0 in
(* 交点の直方体表面での方向 *)
let intsec_rectside = Array.create 1 0 in
(* 発見した交点の最小の t *)
let tmin = Array.create 1 (1000000000.0) in
(* 交点の座標 *)
let intersection_point = Array.create 3 0.0 in
(* 衝突したオブジェクト番号 *)
let intersected_object_id = Array.create 1 0 in
(* 法線ベクトル *)
let nvector = Array.create 3 0.0 in
(* 交点の色 *)
let texture_color = Array.create 3 0.0 in

(* 計算中の間接受光強度を保持 *)
let diffuse_ray = Array.create 3 0.0 in
(* スクリーン上の点の明るさ *)
let rgb = Array.create 3 0.0 in

(* 画像サイズ *)
let image_size = Array.create 2 0 in
(* 画像の中心 = 画像サイズの半分 *)
let image_center = Array.create 2 0 in
(* 3次元上のピクセル間隔 *)
let scan_pitch = Array.create 1 0.0 in

(* judge_intersectionに与える光線始点 *)
let startp = Array.create 3 0.0 in
(* judge_intersection_fastに与える光線始点 *)
let startp_fast = Array.create 3 0.0 in

(* 画面上のx,y,z軸の3次元空間上の方向 *)
let screenx_dir = Array.create 3 0.0 in
let screeny_dir = Array.create 3 0.0 in
let screenz_dir = Array.create 3 0.0 in

(* 直接光追跡で使う光方向ベクトル *)
let ptrace_dirvec  = Array.create 3 0.0 in

(* 間接光サンプリングに使う方向ベクトル *)
let dirvecs = 
  let dummyf = Array.create 0 0.0 in
  let dummyff = Array.create 0 dummyf in
  let dummy_vs = Array.create 0 (dummyf, dummyff) in
  Array.create 5 dummy_vs
in
(* 光源光の前処理済み方向ベクトル *)
let light_dirvec =
  let dummyf2 = Array.create 0 0.0 in
  let v3 = Array.create 3 0.0 in
  let consts = Array.create 60 dummyf2 in
  (v3, consts)
in
(* 鏡平面の反射情報 *)
let reflections =
  let dummyf3 = Array.create 0 0.0 in
  let dummyff3 = Array.create 0 dummyf3 in
  let dummydv = (dummyf3, dummyff3) in
  Array.create 180 (0, dummydv, 0.0)
in
(* reflectionsの有効な要素数 *) 

let n_reflections = Array.create 1 0
in
