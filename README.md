<div align="center">

# XSLT-Template

[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![Github template](https://img.shields.io/badge/USE%20THIS%20REPO%20AS%20GITHUB20TEMPLATE-blue?style=for-the-badge&logo=Github&logoColor=white)](https://github.com/eonm-abes/xslt-template/generate)


Ce dépôt sert de modèle pour le développement de projets XSLT

</div>

## Utiliser ce dépôt comme modèle

En utilisant Ce dépôt comme modèle sur Github :

[![Github template](https://img.shields.io/badge/USE%20THIS%20REPO%20AS%20GITHUB20TEMPLATE-blue?style=for-the-badge&logo=Github&logoColor=white)](https://github.com/eonm-abes/xslt-template/generate)

Ou en clonnant ce dépôt :

```
git clone https://github.com/eonm-abes/xslt-template
cd xslt-template
git remote rm origin
```

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
