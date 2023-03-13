.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

.datapath <- file.path(.get_course_path(),
                      'Programmation_R', 'Examen_des_donnees',
                      'donnees_sur_les_plantes.txt')

plantes <- read.csv(.datapath, strip.white=TRUE, na.strings="")

.cols2rm <- c('Symbole.accepté', 'Synonyme.icône')
plantes <- plantes[, !(names(plantes) %in% .cols2rm)]

names(plantes) <- c('Nom_scientifique', 'Duree_de_l_accord', 'Periode_de_croissance_active',
                   'Couleur_du_feuillage', 'pH_minimum', 'pH_maximum',
                   'Precipitations_minimum', 'Precipitations_minimum',
                   'Tolerance_a_l_ombre', 'Temperature_minimum_F')
