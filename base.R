str(iris) # get summary of an obj
class(iris) # class of an obj

install.packages("dplyr") # install package
library(dplyr) # load lib

dplyr::select(iris) # :: use specific function of lib
data("iris") # load build-in dataset into env
getwd() # get current working directory
setwd() # set working directory

############## Vector ####################
c(1, 2, 3) # join elements into a vector
2:10 # an int seq
seq(2, 10, by=0.5) # generate seq from ... to ... by ...
rep(2:10, times=3) # repeat seq n times
### vector functions###
x <- rep(2:5, times=4)
sort(x) # return sort of x
rev(x) # return reserve of x
table(x) # see counts of value
unique(x) # unique values
### selecting vector elements###
# by position #
x[4] # the fourth elements
x[-4] # all but the fourth
x[2:4] # elements second to fourth
x[c(1, 5)] #elements first and fivth
# by value #
x[x == 5] # elements which equal to 5
x[x < 3] # elements less than 3
x[x %in%c(1, 2, 5)] # element in x both in set 1, 2, 5

########### Programming ####################
### For Loop ###
for (i in 1:4) {
  j <- i+10
  print(j)
}

### While Loop###
while(k < 5){
  print(k)
  k <- k+1
}
### if Statements ###
if( i > 3){
  print('Yes')
}else{
  print('NO')
}
### functions ###
function_name <- function(var){
  ### Do something
  y <- var + 5
  return(y)
}

############ Reading and Writing data #######
# read and write to a delimited text file #
df <- read.table('PITA_targets_hg18_0_0_TOP.tab', header = TRUE) ## important header and sep param 
write.table(df, 'newfile.txt')
# read and write a comma separated value file. This is special of above read and write function #
df <- read.csv('file.csv') 
write.csv(df, 'newfile.csv') 
# read and write an R file a file type sepcial for R #
load('file.Rdata')
save(df, file = 'newfile.Rdata')

######## Conditions #####
# special #
is.na(x) # is x missing?
is.null(x) # is null?

############### Types ################
as.logical(x) # TRUE or FALSE boolean value
as.numeric(x) # int or floating point numbers
as.character(x) # character strings. Generally preferred to factors '1', '0'
as.factor(x) # char strings with preset levels. Needed for some statistical models

################ Maths Functions ###########
w <- as.integer(9) # convert w from numberic to int 
log(w) 
exp(w)
min(x)
sd(x) # the standard deviation
rank(x) # rank of elements

################ Variable assignment #########
a <- 'apple'

################ The ENV #####################
ls() # list all variables in the env
rm(a) # remove x from the env

################ matrixes ####################
m <- matrix(x, nrow = 4, ncol = 4)
m[2, ] # select a second row
m[ ,1] # select first column
class(m[, 2]) 
m[2,3] # select specific element

############### Lists #######################
l <- list(x = 1:5, y = c('a', 'b')) # list is collection of elements which can be of different types
l[[2]] #second elements of l
l[1] # new list with only the first element
l$x # element named x
l['y'] #new list with only element named y

################ Data Frames ###############
df <- data.frame(x = 1:3, y = c('a', 'b', 'c')) # a special case of a list where all elements are the same length
### List subsetting ###
df$x
df[[2]]
### Matrix subsetting ###
df[ , 2]
df[2, ]
df[2, 2]
nrow(df) # number of rows
ncol(df) # number of column
dim(df) # dimention. number of cols and rows

############### Strings ###################
paste(x, a, sep = ' ') # join multiple vectors together
paste(x, collapse = ' ') # join elements of a vector together
#grep(pattern, x) # find regular exp matches in x
#gsub(pattern, replace, x) # Replace matches in x with a string

############## Factors ################### in buit-in library base all of above
factor(x) # turn a vector into a factor. Can set the levels of the factor and the order
cut(x, breaks = 4) # turn a numberic vector into a factor but cutting into sections

############# Statistics ################ in buit-in library stats
lm(x ~ y, data = df) # linear model
glm(x ~ y, data = df) # generalised linear model
summary(df) # get more detailed info out a model

y <- rep(6:9, times = 4) # for test below 
t.test(x, y) # perform a t-test for difference between means
prop.test(x) # test for a difference between proportions
#pairwise.t.test() # preform a t-test for paired data
#aov()

############# Distributions #############
# see base cheat sheet

############# Plotting ################# in graphics lib
plot(x) # values of x in order
plot(x, y) # values of x against y
hist(x) # histogram of x

############# Dates ################### install lubridate lib
# see lubridate lib
date() # or lubridate::date()
