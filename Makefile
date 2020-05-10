NAME=hJOPquiz

all: $(NAME).pdf $(NAME)Key.pdf

$(NAME).pdf: $(NAME).tex
	texfot pdflatex $<

$(NAME)Key.pdf: $(NAME)Key.tex
	texfot pdflatex $<

clean:
	rm -f *.aux *.log *.out

pdfclean: clean
	rm -f *.pdf

.PHONY: clean all pdfclean
