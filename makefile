all:
.PHONY: apexdoc

salesforce-package:
	find src -name "*.cls*" | xargs -I {} cp {} package/classes

apexdoc: salesforce-package
	java -jar bin/apexdoc-1.1.7.jar \
		-s "$(realpath package/classes)" \
		-t "$(realpath docs)" \
		-g 'https://github.com/KThompso/avs/blob/master/src/classes/' \
		-p 'public' \
		-h "$(realpath ApexDocContent/projecthome.html)" \
		-a "$(realpath ApexDocContent/projectheader.html)"
	mv docs/ApexDocumentation/* docs
	rmdir docs/ApexDocumentation

clean:
	rm package/classes/*.cls*
