
wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/doc.julienmoeys.info" 

pkg <- "easylegend"

# setwd( wd <- file.path( "D:/Users/julienm/Documents/_WORKS/_PROJECTS/r_packages", pkg, "www", pkg ) )

descNews <- c( "DESCRIPTION", "NEWS" )
index    <- "00Index.html"

setwd( file.path( wd, pkg ) )


# library( "easylegend" ) 
library( "knitr" ) 

library( pkg, character.only = TRUE ) 

knit_rd( pkg = pkg, frame = FALSE ) 

file.copy(
    from = system.file( descNews, package = pkg ), 
    to   = descNews, 
    overwrite = TRUE 
)   

index.html <- readLines( index )
index.html <- gsub( x = index.html, pattern = "../", replacement = "/easylegend/", 
    fixed = TRUE ) 
writeLines( text = index.html, con = index ) 
rm( index.html )

