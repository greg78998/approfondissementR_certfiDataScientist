


extract_par <- function (para_string) {
  
  tau_ls = list()
  para_string_aug <- para_string 
  
  
  tau <- str_extract(para_string_aug, "\\(.[^()]+\\)" )
  
  para_string_aug <- str_replace(para_string_aug,tau,substr(tau,2,length(tau)-1))
    
  tau_ls |> append(para_string_aug)
  
  return(tau_ls)
}



extract_par(para_string = "J'aime beaucoup le logiciel R (detection d'une parenthèse)")
extract_par(para_string = "J'aime beaucoup le logiciel R ( essaie d'un espace )")


Texte <- "J'aime (beaucoup) R (troisième parenthèse) ttr (essaie d'une deuxième parenthèse) mais ..."

extract_par(para_string = Texte)



extract_par <- function (para_string) {
  tau <- str_extract(para_string, "[\\(.*\\)]" )
  return(tau)
}

extract_par(para_string = Texte)



"abcd(ef)ghif(foj)" %>% str_match_all("\\(([^)]+)\\)")





matrice1 <- matrix(rnorm(15), nrow = 5, ncol = 3)
"["(matrice1,5,3)


??spark