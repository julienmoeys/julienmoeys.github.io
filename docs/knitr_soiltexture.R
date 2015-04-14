
wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io/docs" 

pkg <- "soiltexture"

# setwd( wd <- file.path( "D:/Users/julienm/Documents/_WORKS/_PROJECTS/r_packages", pkg, "www", pkg ) )

descNews <- c( "DESCRIPTION", "NEWS" )
index    <- c( "00Index.html", "index.html" )

setwd( file.path( wd, pkg ) )


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

rm( soiltextureInfo.html )

