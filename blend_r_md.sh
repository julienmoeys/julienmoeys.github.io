
cd /home/jules/Documents/julienmoeys.info/julienmoeys.github.io

R CMD BATCH --vanilla Publications.R

read -p "Press [Enter] to continue"

R CMD BATCH --vanilla "_posts/2015-01-29-modelling-references.R"

read -p "Press [Enter] to continue"

