.SUFFIXES: .mkd .latex .odt .odf .pdf

TARGET = resume_jeremy_stashluk.pdf

$(TARGET): resume.md header.tex
	pandoc $< \
		--output=$@ \
		--standalone \
		--include-in-header=header.tex \
		--variable geometry:margin=1in \
		--variable geometry:headsep=.5in

%.odt: %.md reference.odt
	pandoc $< \
		--output=$@ \
		--reference-doc=$(word 2,$^) \
		$(DOCX_VARS)

odt: resume.odt

clean:
	rm -f $(TARGET)
	rm -f resume.odt
