
PDF_VARS = \
	--variable=geometry:"top=1.0in, bottom=0.75in, left=0.75in, right=0.75in" \
	--variable=author:Jeremy\ Stashluk

.SUFFIXES: .md .latex .odt .odf

%.pdf: %.md %.latex
	pandoc --template=$(word 2,$^) -o $@ $(PDF_VARS) $<

%.odt: %.md reference.odt
	pandoc --reference-odt=$(word 2,$^) -o $@ $(DOCX_VARS) $<

all: resume.pdf resume.docx resume.odt

clean:
	rm -f *.pdf
	rm -f resume.odt
