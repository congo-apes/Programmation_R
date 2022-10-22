notify <- function() {
  e <- get("e", parent.frame())
  if(e$val == "Non") return(TRUE)
  
  good <- FALSE
  while(!good) {
    # Get info
    name <- readline_clean("Quel est votre nom complet ? ")
    address <- readline_clean("Quelle est l'adresse électronique de la personne que vous souhaitez avertir ? ")
    
    # Repeat back to them
    message("\nEst-ce que tout a l'air bien ?\n")
    message("Votre nom : ", name, "\n", "Envoyer à : ", address)
    
    yn <- select.list(c("Oui", "Non"), graphics = FALSE)
    if(yn == "Oui") good <- TRUE
  }
  
  # Get course and lesson names
  course_name <- attr(e$les, "course_name")
  lesson_name <- attr(e$les, "lesson_name")
  
  subject <- paste(name, "juste terminé", course_name, "-", lesson_name)
  body = ""
  
  # Send email
  swirl:::email(address, subject, body)
  
  hrule()
  message("Je viens d'essayer de créer un nouvel e-mail avec les informations suivantes :\n")
  message("À : ", address)
  message("Sujet : ", subject)
  message("Message : <empty>")
  
  message("\nSi cela n'a pas fonctionné, vous pouvez envoyer le même courriel manuellement.")
  hrule()
  
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}
