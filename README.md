<div align="center">

# RAMEAU-XSLT

</div>

## Utilisation du Makefile

Le Makefile permet d'automatiser certaines tâches :

__`make install-saxon`__ : Installe `saxon-he`.

__`make install-xspec`__ : Installe [`xspec`](https://github.com/xspec/xspec) (tests unitaires).

__`make test`__ : Teste le fichier [`xslt/xslt.xsl`](xslt/xslt.xsl) avec xspec.

__`make transform`__ : Transforme les données du dossier [`sample/`](sample/) avec le xsl [`xslt/xslt.xsl`](xslt/xslt.xsl). Les données transformées sont stockées dans le dossier [`output/`](output/).

__`make validate`__ : valide les données du dossier [`output/`](output) contre le schéma [`schema/schema.xsd`](schema/schema.xsd).

__`make clean`__ : nettoie le dossier [`output/`](output) et les résultats des tests [`tests/xspec/`](tests/xspec/).

## Organisation du dépôt

[`output/`](output): Contient les documents générés par la transformation XSL.

[`scripts/`](scripts) : Contient les scripts d'installation de Saxon et de Xspec, les scripts de lancement des tests unitaires et de transformation des données. Ces scripts sont appelés depuis le [`Makefile`](Makefile).

[`sample/`](sample) : Contient des échantillons de données qui peuvent être transformées grâce à XSLT.

[`schema/`](schema) : Contient le schéma des données XML. Les fichiers XML produits par le XSL doivent respecter le schéma.

[`tests/`](tests) : Contient l'ensemble des tests unitaires xspec.
 
[`xslt/`](xslt) : Contient le XSL de transformation.
