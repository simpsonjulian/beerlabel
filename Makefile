label.jpg:
	./label.sh

label.pdf:
	convert label.jpg label.pdf

output.pdf: label.pdf
	pdfnup --no-landscape --nup 2x4 \
		label.pdf label.pdf label.pdf label.pdf label.pdf label.pdf label.pdf label.pdf

print: label.pdf
	lp -n 4 -o ColorModel=Grey label-nup.pdf

clean:
	rm -f *.pdf *.jpg

.PHONY: print

