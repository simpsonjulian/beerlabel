label.jpg:
	./label.sh

label.pdf: label.jpg
	convert label.jpg label.pdf

label-nup.pdf: label.pdf
	pdfnup --no-landscape --nup 2x4 \
		label.pdf label.pdf label.pdf label.pdf label.pdf label.pdf label.pdf label.pdf

print: label-nup.pdf
	lp -n 1 -o "ColorModel=Gray Quality=Draft" label-nup.pdf

clean:
	rm -f *.pdf *.jpg

.PHONY: print

