# Linux # cd /home/jules/Documents/julienmoeys.info/julienmoeys.github.io && R CMD BATCH --vanilla "_posts/2015-02-06-texture-triangle-gallery.R" 
# Win   # cd /D "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io" & CMD BATCH --vanilla "_posts/2015-02-06-texture-triangle-gallery.R" 

rm( list = ls( all = TRUE ) ) 

# GENERAL OPTIONS
if( Sys.info()[[ "sysname" ]] == "Linux" ){ 
    setwd( wd <- "/home/jules/Documents/julienmoeys.info/julienmoeys.github.io" )
}else{ 
    setwd( wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io" )
}   

library( "knitr" )

knit( 
    input  = "_posts/2015-02-06-texture-triangle-gallery.Rmd", 
    output = "_posts/2015-02-06-texture-triangle-gallery.md", 
    quiet  = FALSE )



