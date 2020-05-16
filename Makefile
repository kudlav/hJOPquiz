all: hJOPquiz.pdf hJOPquizKey.pdf

hJOPquiz.pdf: hJOPquiz.tex symboly
	texfot xelatex "\newif\ifsolution\solutionfalse \input{$<}"

hJOPquizKey.pdf: hJOPquiz.tex symboly
	texfot xelatex --jobname=hJOPquizKey "\newif\ifsolution\solutiontrue \input{$<}"

clean:
	rm -f *.aux *.log *.out

pdfclean: clean
	rm -f *.pdf

.PHONY: clean all pdfclean
