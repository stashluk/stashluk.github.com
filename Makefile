VARS = \
	--variable=title:Jeremy\ Stashluk \
	--variable=geometry:margin=1.0in

resume.pdf: README.md resume.latex
	pandoc --template=$(word 2,$^) -o $@ $(VARS) $<

clean:
	rm -f *.pdf
