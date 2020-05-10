all: hJOPquiz.pdf hJOPquizKey.pdf

hJOPquiz.pdf: hJOPquiz.tex
	texfot xelatex $<

hJOPquizKey.pdf: hJOPquiz.tex
	texfot xelatex --jobname=hJOPquizKey "\def\issolution{1} \input{$<}"

clean:
	rm -f *.aux *.log *.out

pdfclean: clean
	rm -f *.pdf

.PHONY: clean all pdfclean
