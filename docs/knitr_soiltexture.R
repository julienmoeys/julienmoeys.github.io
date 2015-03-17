
wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/doc.julienmoeys.info" 

pkg <- "soiltexture"

# setwd( wd <- file.path( "D:/Users/julienm/Documents/_WORKS/_PROJECTS/r_packages", pkg, "www", pkg ) )

descNews <- c( "DESCRIPTION", "NEWS" )
index    <- "00Index.html"

setwd( file.path( wd, pkg ) )


library( "knitr" ) 

library( pkg, character.only = TRUE ) 

knit_rd( pkg = pkg, frame = FALSE ) 

file.copy(
    from = system.file( descNews, package = pkg ), 
    to   = descNews, 
    overwrite = TRUE 
)   

index.html <- readLines( index )
index.html <- gsub( x = index.html, pattern = "../", 
    replacement = sprintf( "/%s/", pkg ), fixed = TRUE ) 
writeLines( text = index.html, con = index ) 

#   Remove the user and computer name from soiltextureInfo.html
change <- c( "login", "user", "effective_user", "nodename" )    

for( ch in change ){ 
    chOld <- Sys.info()[[ ch ]]
    chNew <- paste( rep( "*", nchar(chOld) ), collapse = "" )
    
    soiltextureInfo.html <- readLines( "soiltextureInfo.html" )
    soiltextureInfo.html <- gsub( x = soiltextureInfo.html, 
        pattern = chOld, replacement = chNew, 
        fixed = TRUE ) 
    writeLines( text = soiltextureInfo.html, con = "soiltextureInfo.html" ) 
}   

rm( index.html, soiltextureInfo.html )

