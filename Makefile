build: clean
	mkdir build
	pdflatex -output-directory build WilliamVanHevelingen.tex
	mv build/WilliamVanHevelingen.pdf ~/public_html
	chmod 755 ~/public_html/WilliamVanHevelingen.pdf


clean:
	rm -rf build
