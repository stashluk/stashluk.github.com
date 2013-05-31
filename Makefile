
VARS = \
	--variable=title:Jeremy\ Stashluk \
	--variable=geometry:margin=1.0in

.SUFFIXES: .md .latex 

%.pdf: %.md %.latex
	pandoc --template=$(word 2,$^) -o $@ $(VARS) $<

all: resume.pdf

clean:
	rm -f *.pdf
