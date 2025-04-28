MAKE_OPTS:= --no-builtin-rules

.PHONY: submake
submake: Makefile.coq
	$(MAKE) $(MAKE_OPTS) -f Makefile.coq $(MAKECMDGOALS)

Makefile.coq: _CoqProject
	$(COQBIN)coq_makefile -f $< -o $@ $(wildcard *.v)

%:: submake ;

# known sources

Makefile: ;

_CoqProject: ;
