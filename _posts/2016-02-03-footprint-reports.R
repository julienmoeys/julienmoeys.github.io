# Linux # cd /home/${USER}/Documents/julienmoeys.info/julienmoeys.github.io && R CMD BATCH --vanilla "_posts/2016-02-03-footprint-reports.R" 
# Win   # cd /D "D:/Users/%username%/Documents/_WORKS/_WEB/julienmoeys.github.io" & R CMD BATCH --vanilla "_posts/2016-02-03-footprint-reports.R" 

rm( list = ls( all = TRUE ) ) 

# GENERAL OPTIONS
if( Sys.info()[[ "sysname" ]] == "Linux" ){ 
    setwd( sprintf( 
        wd <- "/home/%s/Documents/julienmoeys.info/julienmoeys.github.io", 
        Sys.info()[[ "user" ]] 
    ) ) 
}else{ 
    setwd( sprintf( 
        wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io", 
        Sys.info()[[ "user" ]] 
    ) )
}   

source( "assets/R/referencesBlender.R" )

# Reference list ================================================

out <- referenceBlender(
    fileIn   = "_posts/2016-02-03-footprint-reports.md0", 
    fileOut  = "_posts/2016-02-03-footprint-reports.md", 
    filesBib = sprintf( 
        "assets/bib/%s", 
        c( "FOOTPRINT_REPORTS.BIB" ) ), 
    highlightName = "vwxy" 
)   


