.SUFFIXES: .mkd .latex .odt .odf .pdf

TARGET = resume.pdf

$(TARGET): $(subst .pdf,.mkd,$(TARGET))
	pandoc -o $@ $<

%.odt: %.mkd reference.odt
	pandoc --reference-odt=$(word 2,$^) -o $@ $(DOCX_VARS) $<

odt: resume.odt

clean:
	rm -f resume.odt

realclean: clean
	rm -f *.pdf
