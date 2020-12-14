---
title : ' Compréhension et utilisation de 4 packages de R: evir, evd, R.miner, '
auteur : " Thuy AUFRERE, Nina ZOUMANIGUI, Arnaud Bruel YANKO "
date : " 08/12/2020 "
sortie :
  pdf_document : par défaut
  word_document : par défaut
  toc : oui
  html_document : par défaut
école : psb
---
`` `{r setup, include = FALSE}
knitr :: opts_chunk $ set ( echo  =  TRUE )
''
###  1. Introduction
Dans une session $ R $, nous avons accès à un bon nombre de fonctions et de jeux de données. Les objets
accessibles sont ceux contenus dans les packages $ R $ chargés à l'ouverture de la session.
Un package $ R $ est simplement un regroupement de fonctions et de données documentées.
Ce tutoriel à pour mais de vous faire une présentation de certains packages qui ont été choisis à savoir evir, evd, R.miner, graphics, packages qui nous permettrons:
- D'explorer le monde de la théorie des valeurs extrêmes [ Cours intéressant sur la Statisque des valeurs extrêmes ] (http://irs.math.cnrs.fr/2017/pdf/majumdar.pdf) en modélisant les risques extrêmes;
- Travailler d'une manière générale sur la régression.
\ n ewpage
###  2. Installation et chargement d'un package R
L'installation d'un package et le chargement d'un package sont deux étapes distinctes.
Certains packages $ R $ sont installés automatiquement lors de l'installation de $ R $.
La fonction installée.packages retourne des informations à propos des packages $ R $ installés sur l'ordinateur
local. 
Il est simple de charger en $ R $ des packages supplémentaires à ceux chargés par défaut. Il suffit d'utiliser les commandes comme dans l'exemple suivant:
`Install.packages`
`bibliothèque (evir)`
`` `{r}
Arnaud <- packages.installés ()
tête ( Arnaud , n = 3 )
''
#### ** 2.1 Evir et evd ** 
** Evir et Evd: Qu'est ce que c'est? **
** Evir ** est un package de $ R $ utiliser dans la théorie des valeurs extrêmes, qui peuvent être divisées dans les groupes suivants; analyser exploratoire des données, maxima de bloc, pics au-dessus d'un seuil (univarié et bivarié), processus ponctuels, distributions $ gev / gpd $.
Quant-à
** Evd ** il étend les fonctions de simulation, de distribution, de quantile de valeurs extrêmes paramétriques univariées et multivariées, et fournit d'ajustement qui calculent les estimations du maximum de vraisemblance pour des modèles maxima univariées et bivariées, et pour les modèles à seuil univariées et bivariées.

##### ** Les fonctions d'Evir et Evd ** 

Ici nous allons recenser certaines fonctions qui peuvent être utilisées dans ces deux packages, commençant par $ Evir $.
Ici nous allons recenser certaines fonctions qui peuvent être utilisées dans ces deux packages, commençant par $ Evir $.

##### ** Listes des fonctions de Evir ** 
