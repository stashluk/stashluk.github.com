
VARS = \
	--variable=geometry:"top=1.0in, bottom=0.75in, left=0.75in, right=0.75in" \
	--variable=author:Jeremy\ Stashluk

.SUFFIXES: .md .latex 

%.pdf: %.md %.latex
	pandoc --template=$(word 2,$^) -o $@ $(VARS) $<

all: resume.pdf

clean:
	rm -f *.pdf
