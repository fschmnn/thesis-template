pdflatex -aux-directory=auxiliary thesis.tex
biber ./auxiliary/thesis
makeglossaries -d auxiliary thesis
pdflatex -aux-directory=auxiliary thesis.tex
pdflatex -aux-directory=auxiliary thesis.tex
