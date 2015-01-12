
rm( list = ls( all = TRUE ) ) 

setwd( wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io/en" )

inFile   <- "Publications.md0"
outFile  <- "Publications.md" 
bibFiles <- c( "_bib/MOEYS_J_PUB_PEER.BIB", "_bib/MOEYS_J_PUB_THESIS.BIB" )



# Reference list ================================================

if( !require("bibtex") ){ 
    install.packages( "bibtex" ) 
    library( "bibtex" )
    #   help( pack = "bibtext" ) 
}   

#   Import the template md file
md <- readLines( con = inFile, encoding = "UTF-8-BOM" ) # Was encoded explicitely in UTF-8 without BOM

#   Import the bib files
bibData <- lapply( 
    X   = bibFiles, 
    FUN = function(bf){ 
        out <- read.bib( file = bf, encoding = "UTF-8" ) 
        
        out <- format( x = out, "text" ) 
        
        out <- paste0( "*   ", out ) 
        
        out <- unlist( lapply( 
            X   = out, 
            FUN = function(txt){ 
                return( gsub( x = txt, pattern = "\n", 
                    replacement = " ", fixed = FALSE ) )
            }   
        ) ) 
        
        return( out )
    }   
)   


for( iBib in 1:length(bibFiles) ){ 
    # iBib <- 1
    
    rowNb <- grep( x = md, pattern = bibFiles[ iBib ], fixed = TRUE ) 
    
    if( length(rowNb) > 0 ){ 
        md <- c( 
            md[ (1:length(md)) < rowNb ], 
            bibData[[ iBib ]], 
            md[ (1:length(md)) > rowNb ] ) 
    }else{ 
        warning( "No tag found for the bibliography" )
    }   
}   

f <- file( description = outFile, open = "w+", encoding = "UTF-8" ) 
writeLines( text = md, con = f )
close( f )
