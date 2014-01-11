
PDF_VARS = \
	--variable=geometry:"top=1.0in, bottom=0.8in, left=0.8in, right=0.8in" \
	--variable=author:Jeremy\ Stashluk

.SUFFIXES: .mkd .latex .odt .odf .pdf

TARGET = resume.pdf

$(TARGET): $(subst .pdf,.mkd,$(TARGET)) resume.latex
	pandoc --template=$(word 2,$^) -o $@ $(PDF_VARS) $<

%.odt: %.mkd reference.odt
	pandoc --reference-odt=$(word 2,$^) -o $@ $(DOCX_VARS) $<

odt: resume.odt

clean:
	rm -f resume.odt

realclean: clean
	rm -f *.pdf
