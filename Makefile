



main : main.ml
	ocamlbuild main.native

main_type : main.ml
	ocamlbuild -cflag -i main.native > main.mli






.PHONY : clean


clean :
	ocamlbuild -clean
