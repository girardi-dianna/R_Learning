# Like STATA "clear _all"
# rm(list=ls(all = TRUE))

# Conditionals and Control Flow

mpg$american <- NA

for (i in 1:nrow(mpg)) {
  if (mpg$manufacturer == "chevrolet") {
    mpg$american <- TRUE
  } else {
    mpg$american <- FALSE
  }
}





