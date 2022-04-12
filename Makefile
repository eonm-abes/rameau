all: install-saxon install-xspec test transform validate

install-saxon:
	./scripts/install-saxon.sh

install-xspec: install-saxon
	./scripts/install-xspec.sh

# Lance les tests unitaires xspec
test: tests/*.xspec xslt/*.xsl
	./scripts/tests.sh

# Transforme avec saxon les fichier du dossier sample
transform: xslt/xslt.xsl sample/*.xml
	./scripts/transform.sh --xsl=xslt/xslt.xsl --xml=sample/*.xml --output-dir=output

# Valide les fichiers générés dans output/ contre le schéma XSD
validate: ./schema/*.xsd output/*.xml
	./scripts/validate.sh --xsd=./schema/schema.xsd --xml=output/*.xml

clean:
	rm -rf output/*.xml
	rm -rf tests/xspec