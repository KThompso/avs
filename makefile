all:
.PHONY: docs

docs:
	java -jar bin/apexdoc-1.1.7.jar \
		-s "$(realpath force-app/main/default/classes)" \
		-t "$(realpath docs)" \
		-g 'https://github.com/KThompso/avs/blob/master/force-app/main/default/classes/' \
		-p 'public' \
		-h "$(realpath ApexDocContent/projecthome.html)" \
		-a "$(realpath ApexDocContent/projectheader.html)"
	mv docs/ApexDocumentation/* docs
	rmdir docs/ApexDocumentation
