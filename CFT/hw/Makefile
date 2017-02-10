LATEXOPT=-xelatex -shell-escape -halt-on-error
NONSTOP=-interaction=nonstopmode
OUTPUT=out

LATEXMK=latexmk
LATEXMKOPT=-pdf
CONTINUOUS=-pvc

MAIN=main
SOURCES=$(MAIN).tex Makefile

all:    thesis

main: $(MAIN).tex $(SOURCES)
		$(LATEXMK) $(LATEXMKOPT) $(CONTINUOUS) $(LATEXOPT) $(NONSTOP) $(MAIN)

force:
		rm $(MAIN).pdf
		$(LATEXMK) $(LATEXMKOPT) $(CONTINUOUS) $(LATEXOPT) $(NONSTOP) $(MAIN)

clean:
		$(LATEXMK) -C $(MAIN)
		rm -f $(MAIN).pdfsync
		rm -rf *~ *.tmp
		rm -f *.bbl *.blg *.aux *.end *.fls *.log *.out *.fdb_latexmk *.vscodeLog *.snm *.nav

once:
		$(LATEXMK) $(LATEXMKOPT) $(LATEXOPT) $(NONSTOP) $(MAIN)

debug:
		$(LATEX) $(LATEXOPT) $(MAIN)

.PHONY: clean force once all
