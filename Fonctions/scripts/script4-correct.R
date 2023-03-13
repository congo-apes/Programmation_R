# Vous pouvez transmettre des fonctions comme arguments à d'autres fonctions, tout comme 
# vous pouvez transmettre des données à des fonctions. Imaginons que vous définissiez les 
# fonctions suivantes :
#
# ajouter_deux_nombres <- function(nombre1, nombre2){
#    nombre1 + nombre2
# }
#
# multiplier_deux_nombres <- function(nombre1, nombre2){
#	nombre1 * nombre2
# }
#
# une_fonction <- function(fonc){
#    fonc(2, 4)
# }
#
# Comme vous pouvez le voir, nous utilisons le nom de l'argument "fonc" comme une fonction à 
# l'intérieur de "une_function()". En passant des fonctions comme arguments, 
# une_function(ajouter_deux_nombres) sera évalué à 6, tandis que une_function(multiplier_deux_nombres) 
# sera évalué à 8.
# 
# Terminez la définition de la fonction ci-dessous de sorte que si une fonction est passée 
# dans l'argument "fonc" et que certaines données (comme un vecteur) sont passées dans 
# l'argument dat, la fonction evaluer() renverra le résultat de dat passé comme argument 
# à fonc.
#
# Indices : Cet exercice est un peu délicat, je vais donc fournir quelques exemples de la façon dont 
# evaluer() devrait agir :
#    1. evaluer(sum, c(2, 4, 6)) devrait donner la valeur 12
#    2. evaluer(median, c(7, 40, 9)) devrait donner la valeur 9
#    3. evaluer(floor, 11.1) devrait donner la valeur 11

evaluer <- function(fonc, donnees){
  # Écrivez votre code ici !
  # N'oubliez pas : la dernière expression évaluée sera retournée !
  fonc(donnees)
}
