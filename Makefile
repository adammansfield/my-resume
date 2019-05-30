common_files = tucv.extensions.tex

pdfs: cv.pdf resume.pdf

cv.pdf: cv.tex $(common_files)
	pdflatex cv.tex

resume.pdf: resume.tex $(common_files)
	pdflatex resume.tex

.PHONY: clean
clean:
	rm -f ./*.aux
	rm -f ./*.log
	rm -f ./*.pdf
