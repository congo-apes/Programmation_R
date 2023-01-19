# Voyons comment déballer les arguments d'une ellipse lorsque vous l'utilisez 
# comme argument dans une fonction. Ci-dessous, j'ai un exemple de fonction qui 
# est censée ajouter deux arguments explicitement nommés appelés alpha et beta.
# 
# ajouter_alpha_et_beta <- function(...){
#   # D'abord, nous devons capturer l'ellipse à l'intérieur d'une liste et 
#	# ensuite assigner la liste à une variable. Nommons cette variable `args`.
#
#   args <- list(...)
#
#   # Nous allons maintenant supposer qu'il y a deux arguments nommés dans args 
#	# avec les noms `alpha` et `beta`. Nous pouvons extraire les arguments nommés 
#	# de la liste args en utilisant le nom de l'argument et les doubles crochets. 
#	# La variable `args` est juste une liste normale après tout !
#   
#   alpha <- args[["alpha"]]
#   beta  <- args[["beta"]]
#
#   # Ensuite, nous retournons la somme de alpha et beta.
#
#   alpha + beta 
# }
#
# Avez-vous déjà joué à texte à trous ? La fonction ci-dessous va construire une phrase 
# à partir des parties du discours que vous fournissez comme arguments. Nous allons 
# écrire la plupart de la fonction, mais vous devrez déballer les arguments 
# appropriés à partir des ellipses.

texte_a_trous <- function(...){
  # Faites votre déballage d'arguments ici !
  
  # Ne modifiez aucun code sous ce commentaire.
  # Remarquez les variables que vous devrez créer 
  # pour que le code ci-dessous soit fonctionnel !
  paste("Des nouvelles de", lieu, "aujourd'hui où des étudiants", adjectif, "sont descendus dans la rue pour protester contre l'installation d'un nouveau", nom, "sur le campus.")
}
