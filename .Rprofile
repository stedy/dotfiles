r <- getOption('repos')
r["CRAN"] <- "https://mirror.its.sfu.ca/mirror/CRAN/"
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

ti <- function(x){
      return(table(is.na(x)))
      }

trim <- function (x) gsub("^\\s+|\\s+$", "", x)

onezero <- function(x)
  sample(c(0,1), replace=T, size=x)
