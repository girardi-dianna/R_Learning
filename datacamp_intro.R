# Like STATA "clear _all"
# rm(list=ls(all = TRUE))

head(mpg)
tail(mpg)
str(mpg)
summary(mpg)

# Create manufacturer vector
manu_vector <- mpg$manufacturer
str(manu_vector)

# Subset Audi cars
audi_df <- subset(mpg, manufacturer == "audi")
str(audi_df)

# Order mpg by cty
positions <- order(mpg$cty, decreasing = TRUE)
positions

# Most cty first, decreasing
most_first_df <- mpg[positions, ]
most_first_df

# Order Audi by hwy, decreasing
audi_position <- order(audi_df$hwy, decreasing = TRUE)
audi_position
audi_most_df <- audi_df[audi_position, ]
audi_most_df

# Lists

my_list <- list(manu = mpg$manufacturer,
                year = mpg$year,
                class = mpg$class)
str(my_list)
my_list

my_list2 <- c(my_list, mpg$trans)
str(my_list2)

# Above code is not correct. Since variable being added is not a single variable,
# we need to make it into a list, then c()
trans_list <- list(trans = mpg$trans)
my_list3 <- c(my_list, trans_list)
rm(trans_list)
str(my_list3)










