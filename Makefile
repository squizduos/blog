HUGO_EXEC := "./bin/hugo"
SRC_DIR := src/
PUBLIC_DIR = public/

build:
	$(HUGO_EXEC) -s ${CURDIR}/$(SRC_DIR) -d ${CURDIR}/public

server:
	$(HUGO_EXEC) server -s ${CURDIR}/$(SRC_DIR) -d ${CURDIR}/public

deploy:
	git add .
	git commit -m "Site update $(shell date)"
	git push origin master

clean:
	rm -rf ${CURDIR}/$(PUBLIC_DIR)
	rm -rf ${CURDIR}/${SRC_DIR}/resources