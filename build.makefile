all:  docs vig build  check

docs:
	R -e "devtools::document()"
vig:
	R -e "devtools::build_vignettes()"

build:
	(cd ..; R CMD build --no-build-vignettes IGV)

install:
	(cd ..; R CMD INSTALL IGV)

check:
	(cd ..; R CMD check `ls -t IGV_* | head -1`)

biocCheck:
	(cd ..; R CMD BiocCheck `ls -t IGV_* | head -1`)
