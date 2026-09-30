# 1. Read 'wingspan_vs_mass.csv' using relative path and 
## save as an object
# 2. what type of obj is this?
# 3. how many rows and columns in the file?


Data/wingspan_vs_mass.csv
read.csv('Data/wingspan_vs_mass.csv')

filepath = 'Data/wingspan_vs_mass.csv'

hahha = read.csv(filepath)
is.array(hahha)
is.list(hahha)
class(hahha)
str(hahha)

nrow(hahha)
ncol(hahha)
dim(hahha) #[row, col]
new_obj = hahha[1:2, 5:6]

head(hahha)
tail(hahha)
head(hahha, n = 3)
tail(hahha, n = 3)
names(hahha)

View(hahha)

list.files('Data/')
list.files('Data/', recursive = F)
list.files('Data/', recursive = T)

obj = list.files('Data/', recursive = T)
length(obj)


wingspan_vs_mass.csv
list.files('Data/', pattern = 'csv')
pattern = ''
#^ # begin
#$ # end  

list.files('Data/', pattern = '.csv$')
list.files('Data/', pattern = '^s')
list.files('Data/', pattern = 's$')
list.files('Data/', pattern = '^S')
list.files('Data/', pattern = '^s', ignore.case = T)
list.files('Data/', pattern = '^[sS]')

## 

length()

my_fun = function(x, y){
  out = x + y
  print(out)
}

source('my_function.R')

my_fun(1,2)
my_fun(33,137485070)


## loop
i like apple
i like orange
i like banana
i like pear

fruit = c('apple', 'orange', 'banana', 'pear')

for (variable in fruit) {
  print(variable)
}

for (variable in fruit) {
  out = paste('i like')
  print(out)
  print(variable)
}

for (variable in fruit) {
  out = paste('i like', variable)
  print(out)
  
}


for (i in 1:3) {
  out = i + 1
  print(out)
}

## try to write a for loop

for (j in 1:2) {
  for (i in 1:3) {
    print(paste('this is the', j))
    print(i)
    
  }
  
}


while (condition) {
  do something
}


i = 1
while (i < 6) {
  print('cool')

}

while (i < 6) {
  print('cool')
  i = i + 1
}
i

# 1. create a data frame contains your favorite fruits 
#  (at least 3) and their calories 
# 3. After creating the df, add a new col called 'calaries_100'
#    the value = original cal + 100
# 4. write a loop to print out 'calaries_100'
# 5. save the data frame to local

df_fruit = data.frame(
  fruit = c('apple', 'orange', 'banana', 'pear'),
  cal = c(1, 22, 33, 44)
)

df_fruit$calaries_100 = df_fruit$cal + 100
df_fruit

?write.csv()

