Require Import Ltac2.Ltac2 .

Module Bla.
  #[abstract] Ltac2 Type r := { a : unit }.
  Ltac2 f (_ : r) : unit := ().
  Ltac2 g (r : r) := r.(a).
End Bla.

From Ltac2Compiler Require Import Ltac2Compiler.

Ltac2 Compile Bla.g. (* assertion failure in is_mutable_proj *)
