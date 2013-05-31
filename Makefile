VARS = --variable=author:Jeremy\ Stashluk

resume.pdf: README.md resume.latex
	echo $(word 2,$^)
	pandoc --template=$(word 2,$^) -o $@ $(VARS) $<
