# Les ellipses peuvent être utilisées pour transmettre des arguments à d'autres 
# fonctions qui sont utilisées dans la fonction que vous écrivez. Habituellement, 
# une fonction qui a les ellipses comme argument a les ellipses comme dernier 
# argument. L'utilisation d'une telle fonction ressemblerait à ceci :
#
# fonction_ellipses(argument1, argument2 = TRUE, ...)
#
# Dans l'exemple ci-dessus, argument1 n'a pas de valeur par défaut, donc une valeur 
# doit être fournie pour argument1. argument2 a une valeur par défaut, et d'autres 
# arguments peuvent venir après argument2 selon la façon dont ils sont définis dans 
# la documentation de fonction_ellipses(). Il est intéressant de noter que 
# l'utilisation de la fonction paste est la suivante :
#
# paste (..., sep = " ", collapse = NULL)
#
# Remarquez que l'ellipse est le premier argument, et que tous les autres arguments 
# après l'ellipse ont des valeurs par défaut. Il s'agit d'une règle stricte en 
# programmation R : tous les arguments après une ellipse doivent avoir des valeurs 
# par défaut. Jetez un coup d'œil à la fonction simon_dit ci-dessous :
#
# simon_dit <- function(...){
#   paste("Simon dit:", ...)
# }
#
# La fonction simon_dit fonctionne comme la fonction paste, sauf que le début de 
# chaque chaîne est précédé de la chaîne "Simon dit :".
#
# Les télégrammes étaient autrefois parsemés des mots COMMENCER et ARRÊTER afin 
# de délimiter le début et la fin des phrases. Ecrivez une fonction ci-dessous 
# appelée telegramme qui formate les phrases pour les télégrammes. Par exemple, 
# l'expression `telegramme("Bonjour", "!")` doit donner la valeur suivante : 
# "COMMENCER Bonjour ! ARRÊTER"

telegramme <- function(...){
  paste("COMMENCER", ..., "ARRÊTER")
}