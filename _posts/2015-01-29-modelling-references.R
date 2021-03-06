# Linux # cd /home/jules/Documents/julienmoeys.info/julienmoeys.github.io && R CMD BATCH --vanilla "_posts/2015-01-29-modelling-references.R" 
# Win   # cd /D "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io" & CMD BATCH --vanilla "_posts/2015-01-29-modelling-references.R" 

rm( list = ls( all = TRUE ) ) 

# GENERAL OPTIONS
if( Sys.info()[[ "sysname" ]] == "Linux" ){ 
    setwd( wd <- "/home/jules/Documents/julienmoeys.info/julienmoeys.github.io" )
}else{ 
    setwd( wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io" )
}   

source( "assets/R/referencesBlender.R" )

# Reference list ================================================

out <- referenceBlender(
    fileIn   = "_posts/2015-01-29-modelling-references.md0", 
    fileOut  = "_posts/2015-01-29-modelling-references.md", 
    filesBib = sprintf( 
        "assets/bib/%s", 
        c( "GOOD_MODELLING_PRACTICES.BIB", "MODEL_EVALUATION.BIB", 
           "PHILOSOPHY_OF_MODELS.BIB" ) ), 
    highlightName = "Moeys" 
)   


