r <- getOption('repos')
r["CRAN"] <- "http://cran.fhcrc.org"
options(repos = r)
rm(r)

options(prompt="R> ", digits = 4, show.signif.stars=FALSE)
options(stringsAsFactors=FALSE)

`%notin%` <- function(x,y) !(x %in% y)

lu <- function(x){
      return(length(unique(x)))
      }

li <- function(x, y){
      return(length(intersect(x,y)))
      }

wcd <- function(demo, file.name){
      demo$ssn <- NULL
      demo$chartno <- NULL
      demo[is.na(demo)] <- ""
      write.csv(demo, file.name, row.names=F)
      print(paste(file.name, "sucessfully written", sep=" "))
      }

ti <- function(x){
      return(table(is.na(x)))
      }

trim <- function (x) gsub("^\\s+|\\s+$", "", x)
