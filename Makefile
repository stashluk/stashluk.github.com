
VARS = \
	--variable=geometry:margin=0.75in

.SUFFIXES: .md .latex 

%.pdf: %.md %.latex
	pandoc --template=$(word 2,$^) -o $@ $(VARS) $<

all: resume.pdf

clean:
	rm -f *.pdf
