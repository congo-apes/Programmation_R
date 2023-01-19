# Vous êtes libre d'implémenter la fonction my_mean comme vous le souhaitez, tant 
# qu'elle renvoie la moyenne de tous les nombres de `mon_vecteur`.
#
# Indice n° 1 : sum() renvoie la somme d'un vecteur.
# 	Exemple : sum(c(1, 2, 3)) est évalué à 6
#
# Indice n° 2 : length() renvoie la taille d'un vecteur.
# 	Exemple : length(c(1, 2, 3)) est évalué à 3
#
# Indice n°3 : La moyenne de tous les nombres d'un vecteur est égale à la somme 
#			de tous les nombres du vecteur divisée par la taille du vecteur.
#
# Note pour ceux d'entre vous qui se sentent super intelligents : N'utilisez pas la 
# fonction mean() lorsque vous écrivez cette fonction. Nous essayons de vous apprendre 
# quelque chose ici !
#
# Veillez à enregistrer ce script et à taper submit() dans la console après avoir 
# effectué vos modifications.

my_mean <- function(mon_vecteur) {
  # Écrivez votre code ici !
  # N'oubliez pas : la dernière expression évaluée sera retournée !
  sum(mon_vecteur)/length(mon_vecteur)
}
