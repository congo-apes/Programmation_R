.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.lessonpath <- file.path(.get_course_path(), "Programmation_R",
                        "lapply_and_sapply")

.datapath <- file.path(.lessonpath, "donnees_des_drapeaux.txt")

drapeaux <- read.csv(.datapath, header=FALSE)

colnames(drapeaux) <- c("nom", "masse_continentale", "zone", "region", "population",
                     "langue", "religion", "barres", "bandes", "couleurs",
                     "rouge", "vert", "bleu", "or", "blanc", "noir",
                     "orange", "teinte_principale", "cercles", "croix", "saltires",
                     "quartiers", "etoiles_solaires", "croissant", "triangle",
                     "symbole", "animer", "texte", "haut_gauche", "bas_droite")

.infopath <- file.path(.lessonpath, "noms_des_drapeaux.txt")

afficher_les_informations <- function() {
  file.edit(.infopath)
  return(.infopath)
}

ok <- function() {
  invisible()
}
