

Inductive Element : Type :=
  | 木 : Element
  | 火 : Element
  | 土 : Element
  | 金 : Element
  | 水 : Element.

Definition 生 (e : Element) : Element :=
  match e with
  | 木 => 火
  | 火 => 土
  | 土 => 金
  | 金 => 水
  | 水 => 木
  end.

Definition 克 (e : Element) : Element :=
  match e with
  | 木 => 土
  | 火 => 金
  | 土 => 水
  | 金 => 木
  | 水 => 火
  end.


Notation "x && y" := (andb x y).
Notation "x || y" := (orb x y).

Example ex_1 : 生 木 = 火.
Proof. reflexivity. Qed.

Example ex_2 : 生 土 = 克 火.
Proof. reflexivity. Qed.

Example ex_3 : 克 金 = 生 水.
Proof. reflexivity. Qed.

Example ex_4 : 生 (克 火) = 克 (生 (生 木)).
Proof. reflexivity. Qed.
