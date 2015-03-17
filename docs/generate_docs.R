
setwd( wd <- "D:/Users/julienm/Documents/_WORKS/_WEB/julienmoeys.github.io/docs" )

library( "markdown" )

markdownToHTML( file = "index.md", output = "index.html", 
    stylesheet = "R.css", encoding = "UTF-8", 
    title = "R package documentation (Julien MOEYS)" )

pkgs <- c( "easylegend", "soiltexture", "macroutils" )

out <- vector( length = length( pkgs ), mode = "list" )
names( out ) <- pkgs

for( p in pkgs ){ 
    # p <- pkgs[ 1L ]
    
    #   Environment that will contain the output of the 
    #   help page generation by knitr
    out[[ p ]] <- new.env() 
    
    #   File to be sourced
    f <- sprintf( "knitr_%s.R", p )
    
    if( all( file.exists( c( p, f ) ) ) ){
        # ff <- file( description = f, open = "rt", encoding = "UTF-8" ) 
        
        message( sprintf( "\nSourcing doc for %s\n", p ) )
        
        source( file = f, local = out[[ p ]], encoding = "UTF-8" ) 
        
        # close( ff )
        
    }else{ 
        warning( sprintf( 
            "Output folder or code-file not found for package %s", 
            p
        ) ) 
    }   
    
    setwd( wd )
    rm( f )
}   
