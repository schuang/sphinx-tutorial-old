all: slides.pdf

slides.pdf: slides.md
	pandoc -t beamer -H header.tex --metadata-file=default.yaml -o slides.pdf  slides.md

