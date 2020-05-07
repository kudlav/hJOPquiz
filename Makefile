NAME=hJOPquiz

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	texfot pdflatex $<

clean:
	rm -f $(NAME).aux $(NAME).log $(NAME).out

pdfclean: clean
	rm -f $(NAME).pdf

.PHONY: clean all pdfclean
