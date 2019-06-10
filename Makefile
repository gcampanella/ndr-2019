LATEXMK = latexmk -r mklatex.rc

all: ndr_2019.pdf

%.pdf: %.tex
	$(LATEXMK) -gg -pdf -xelatex -use-make $<
	$(LATEXMK) -c

clean:
	$(LATEXMK) -C
