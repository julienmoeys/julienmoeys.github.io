---
layout    : page_en
title     : Software
longtitle : Software development (R packages)
weight    : 3
---

Page content: 
[easylegend](#easylegend) &middot; 
[soiltexture](#soiltexture) &middot; 
[easydb](#easydb) &middot; 
[soilwater](#soilwater) &middot; 
[macroutils](#macroutils)



easylegend <a id="easylegend"></a>
----------

Automatic plot overlay and legend for categorical and continuous 
variables (symbols, colors, ...).

See the [package presentation on Github][gh.easylegend].

Package [online help pages][docs.easylegend].



soiltexture ("the soil texture wizard")<a id="soiltexture"></a>
---------------------------------------

A toolbox for soil texture data and texture triangle plots in R.

Package and information available [on CRAN][soiltexture]. Package source 
code available [on R-Forge][soiltexture_rf].

Package [online help pages][docs.soiltexture].

See also my [gallery of soil texture triangles]({% post_url 2015-02-06-texture-triangle-gallery %}), 
created with this package.

<small>_Warning: `soiltexture` is the first R package I ever wrote. Its was 
first released in 2010. If the algorithms behind the packages 
seems to work very well, I have realise since then that the packages 
interface, and its documentation is quite awful and would need 
an important re-factoring. This was the purpose of the sub-project 
[ternaryplot][], aiming at providing a clean, object-oriented and 
well documented interface for ternary plots and texture diagrams, 
started one year ago. But I have so far not managed to finish it 
(because of lack of time)._</small>



easydb<a id="easydb"></a>
------

**Simplified and uniform database interface** for [SQLite][], 
[MySQL][] and [MS Access][MSAccess]. It provides functions for easily 
reading, writing, listing and subsetting tables in [SQLite][], 
[MySQL][] and [MS Access][MSAccess]. `easydb` is build on top of R 
packages [RSQLite][] and [RODBC][].

`easydb` is also some sort of (additional) [abstraction layer][AbstractionLayer] 
for interactions with databases in R. It also helps reducing the 
amount of code in other R packages and functions that interact with 
databases.

Packages and source code available [on R-Forge][easydb]. Packages 
[presentation page on R-Forge][easydb_home].



soilwater<a id="soilwater"></a>
---------

`soilwater` provides soil water retention functions and soil 
hydraulic conductivity functions and pedotransfer functions to 
estimate their parameter from easily available soil properties.

Packages and information available [on R-Forge][soilwater]. Package 
[home page][soilwater_hp] (on R-Forge).



macroutils<a id="macroutils"></a>
----------

Utility functions for the pesticide fate model [MACRO][]

_Description to be written_.



<!-- List of links  -->
[easydb]:           https://r-forge.r-project.org/projects/easydb/ "easydb package suite (R-Forge)" 
[easydb_home]:      http://easydb.r-forge.r-project.org/ "easydb home page (R-Forge)" 
[soiltexture]:      http://cran.r-project.org/web/packages/soiltexture/ "soiltexture R package (CRAN)"
[soiltexture_rf]:   http://r-forge.r-project.org/projects/soiltexture/ "soiltexture R package (R-Forge)"
[MySQL]:            http://www.mysql.com/ "MySQL database" 
[SQLite]:           http://www.sqlite.org/ "SQLite database"
[MSAccess]:         http://en.wikipedia.org/wiki/Microsoft_Access "Microsoft_Access (Wikipedia)"
[RODBC]:            http://cran.r-project.org/web/packages/RODBC/ "RODBC (R package)"
[DBI]:              http://cran.r-project.org/web/packages/DBI/ "DBI (R package)"
[RSQLite]:          http://cran.r-project.org/web/packages/RSQLite/ "RSQLite (R package)" 
[AbstractionLayer]: http://en.wikipedia.org/wiki/Abstraction_layer  "Abstraction layer (Wikipedia)"
[ternaryplot]:      http://r-forge.r-project.org/R/?group_id=740  "ternaryplot R package (R-Forge)"
[soilwater]:        https://r-forge.r-project.org/projects/soilwater/  "soilwater package suite (R-Forge)" 
[soilwater_hp]:     http://soilwater.r-forge.r-project.org/  "soilwater home page (R-Forge)" 
[docs.soiltexture]: http://docs.julienmoeys.info/soiltexture/ "soiltexture online documentation"
[docs.easylegend]:  http://docs.julienmoeys.info/easylegend/ "easylegend online documentation"
[gh.easylegend]:    https://github.com/julienmoeys/easylegend/blob/master/README.md "easylegend - package presentation (GitHub)"
[MACRO]:            http://www.slu.se/sv/centrumbildningar-och-projekt/kompetenscentrum-for-kemiska-bekampningsmedel/verksamhetsomraden/modeller/macro-5x/ "MACRO 5.2" 


