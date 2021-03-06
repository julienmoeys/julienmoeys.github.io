# Linux # cd /home/jules/Documents/julienmoeys.info/julienmoeys.github.io && R CMD BATCH --vanilla "Publications.R" 
# Win   # cd /D "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io" & R CMD BATCH --vanilla "Publications.R" 

rm( list = ls( all = TRUE ) ) 

# GENERAL OPTIONS
if( Sys.info()[[ "sysname" ]] == "Linux" ){ 
    setwd( wd <- "/home/jules/Documents/julienmoeys.info/julienmoeys.github.io" )
}else{ 
    setwd( wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io" )
}   

source( "assets/R/referencesBlender.R" )

# Reference list ================================================

referenceBlender(
    fileIn   = "Publications.md0", 
    fileOut  = "Publications.md", 
    filesBib = sprintf( 
        "assets/bib/%s", 
        c( "MOEYS_J_PUB_PEER.BIB", "MOEYS_J_PUB_THESIS.BIB", 
           "MOEYS_J_PUB_CORRECTIONS.BIB", "MOEYS_J_REPORTS.BIB" ) ), 
    highlightName = "Moeys" 
)   

