
wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io/docs" 

pkg <- "easylegend"

# setwd( wd <- file.path( "D:/Users/julienm/Documents/_WORKS/_PROJECTS/r_packages", pkg, "www", pkg ) )

descNews <- c( "DESCRIPTION", "NEWS" )
index    <- c( "00Index.html", "index.html" )

setwd( file.path( wd, pkg ) )


# library( "easylegend" ) 
library( "knitr" ) 

library( pkg, character.only = TRUE ) 

knit_rd( pkg = pkg, frame = TRUE ) 

file.copy(
    from = system.file( descNews, package = pkg ), 
    to   = descNews, 
    overwrite = TRUE 
)   

for( i in index ){ 
    index.html <- readLines( i )
    index.html <- gsub( x = index.html, pattern = "../", replacement = "/easylegend/", 
        fixed = TRUE ) 
    writeLines( text = index.html, con = i ) 
    rm( index.html )
}   


