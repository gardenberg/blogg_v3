#script for enkelt vedlikehold av site

#vanlig workflow

#lag ny post
#Æ, ø, å kan ikke brukes i tittelen her, men kan brukes i selve artikkelen etterpå
#mulig det skyldes slug, men lettere å la den settes automatisk
distill::create_post(
  title = "Indikatorer for integrering",
  collection = "posts",
  author = "auto",
  date = as.Date("2024-10-30")
  )

#skriv eller rediger posten

#lagre posten med encoding UTF-8 (standard er noe annet, uklart hvorfor)

#knit posten fra menuen over

#rebuild site. Lurt å bruke script-kommando, ikke RSTudio-GUI?
#så lenge sidene er lagret i UTF-8 går det fint med GUI-knapp.

#rmarkdown::render_site

# SLETTING
#for å slette en post, slett mappa i _posts-mappa, og build sida.
#da fjernes filene fra _site-mappa

#hvis det blir encoding-problemer for skandinaviske tegn, restart R-session.

##ressurser##
#hovedside hos Posit: https://rstudio.github.io/distill/
#getting started-guiden fra samme nettsted https://rstudio.github.io/distill/blog.html#getting-started
#enkel guide: https://themockup.blog/posts/2020-08-01-building-a-blog-with-distill/
#annet eksempel: https://lisalendway.netlify.app/posts/2020-12-09-buildingdistill/
#oversikt-side med flere eksempler: https://distillery.rbind.io/

#markdown-cheatsheet https://www.markdownguide.org/cheat-sheet/

#import
#for å importere en post, distill::import_post
#dette importerer kun filer generert som distill posts, ikke andre HTML-filer
# distill::import_post(
#   url = "~/R/datablog/content/blog/2022-03-05-stiklinger-ute/index.html",
#   date = as.Date("2022-03-05"),
#   check_license = FALSE,
#   overwrite = FALSE
# )

#en kan ikke legge html-filer direkte i _site-mappa.


