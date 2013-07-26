rm     := rm -f
touch  := touch
latex  := pdflatex

ext_aux := log toc lot lof idx ilg ind aux blg bbl ins
ext_out := pdf

target = resume cover

tex = $(target:%=%.tex)
pdf = $(target:%=%.pdf)

%.pdf : %.tex
	$(latex) $< -o $@

all : $(pdf)
renew : force all

force :
	@$(touch) $(tex)
clean :
	@$(rm) $(addprefix *,$(ext_aux)) *~
distclean : clean
	@$(rm) $(addprefix *,$(ext_out))

.PHONY : force all renew clean distclean
