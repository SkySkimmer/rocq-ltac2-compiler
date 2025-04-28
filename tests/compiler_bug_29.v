Require Import Ltac2.Ltac2.
Require Import Ltac2Compiler.Ltac2Compiler.

Ltac2 foo := let rec foo () := foo () in foo.

Ltac2 Compile foo.
(* Error: Anomaly "File "src/tac2compile.ml", line 662, characters 2-8: Assertion failed." *)
