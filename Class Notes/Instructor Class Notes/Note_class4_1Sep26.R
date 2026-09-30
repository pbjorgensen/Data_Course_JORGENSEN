1+1+1
2+1

#
.RData

read.csv()
read.csv(file = '/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Data/1620_scores.csv')
read.csv()

obj = read.csv(file = '/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Data/1620_scores.csv')
obj
View(obj)

# absolute path
/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Data/1620_scores.csv

# relative path 
getwd()
?getwd()
setwd('/Users/yu-yaliang/Desktop')
obj = read.csv(file = '/Users/yu-yaliang/Desktop/Data_Course_LASTNAME/Data/1620_scores.csv')

# relative path
obj = read.csv(file = 'Data_Course_LASTNAME/Data/1620_scores.csv')


# Title ####
## sss ####
### ddddd ####
#### ffff ####


## practice 
## 1. read a csv file from Data using absolute path
## 2. read a csv file from Data using relative path
getwd()
?getwd()
setwd('/Users/yu-yaliang/Desktop')



getwd()

read.csv('Data/1620_scores.csv')


## 1. create R project
## read a .csv file using relative path


csv_file = read.csv(file = 'Data/1620_scores.csv')
getwd()

echo 'ggg' > README.md

csv_file = 'csv filee'

obj1 = 1
obj2 = '1'

obj1 + 1
obj2 + 1

is.character(obj1)
is.character(obj2)
is.numeric(obj1)
is.numeric(obj2)
is.logical(obj1)
is.logical(obj2)

as.numeric(obj2)
as.character(obj1)

obj2 = as.numeric(obj2)



##  object in R ####
# vector: one dim, same type (numeric, character, logical)
vec = c(1, 2, 3)
vec
vec + 1

vec2 = c(1, "2", 3)
vec2

vec2 = c(TRUE, FALSE, FALSE)
vec2 = c("TRUE", FALSE, FALSE)

length(vec2)

vec2
vec2[1]
vec2[2]

# matrix: 2 dim, same type
mat = matrix()
?matrix()
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, 
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat
mdat[row, col]
mdat[2, 2]

t(mdat)

# array: similiar with matrix, multiple dimention, same type 
arr = array(c(1,2,3,4,5,6))

1:6

arr = array(1:12, ncol = 2, nrow = 2)
?array
arr = array(1:12, dim = c(2,2,6))
arr[2,1,6]
arr[,,6]

is.matrix(arr[,,6])

# data frame: 2 dim, different type, same length
dat = data.frame(
  id = c(1,2,3),
  weight = c(4,5,6),
  color = c('red', 'blue', 'lightblue')
)
dat
dat$id
dat$animal = c(17, 'giraffe', 'tiger')

dat
# list: multi dim, different type, differt length
lis = list(
  id = c(1,2,3),
  weight = c(4,5,6),
  color = c('red', 'blue', 'lightblue'),
  mdat = mdat
)
lis
?list
