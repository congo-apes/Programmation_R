# La syntaxe permettant de créer de nouveaux opérateurs binaires dans R ne ressemble 
# à rien d'autre dans R, mais elle vous permet de définir une nouvelle syntaxe pour 
# votre fonction. Je ne vous recommande de créer votre propre opérateur binaire que 
# si vous prévoyez de l'utiliser souvent !
#
# Les opérateurs binaires définis par l'utilisateur ont la syntaxe suivante :
#      %[quelque_chose]% 
# où [quelque_chose] représente tout nom de variable valide.
# 
# Imaginons que je veuille définir un opérateur binaire qui multiplie deux nombres 
# et ajoute ensuite un au produit. Une implémentation de cet opérateur est présentée 
# ci-dessous :
#
# "%multiplier_et_ajouter_un%" <- function(gauche, droite){ # Remarquez les guillemets !
#   gauche * droite + 1
# }
#
# Je pourrais alors utiliser cet opérateur binaire comme `4 %multiplier_et_ajouter_un% 5` 
# qui donnerait 21.
#
# Écrivez votre propre opérateur binaire ci-dessous en partant de zéro ! Votre opérateur 
# binaire doit s'appeler %p% afin que l'expression :
#
#       "Bon" %p% "travail" %p% "!"
#
# sera évalué à : "Bon travail !"

"%p%" <- function(){ # N'oubliez pas d'ajouter des arguments !
  
}



