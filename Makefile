pdfs: cv.pdf resume.pdf

cv.pdf: cv.tex
	pdflatex cv.tex

resume.pdf: resume.tex
	pdflatex resume.tex

.PHONY: clean
clean:
	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.pdf
