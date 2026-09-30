# Exam 1 Material ####

## Week 2 Practice from WEBSITE ####

### Sets WD to a relative path ####
setwd('/Users/parkerjorgensen/Documents/Data_Course_JORGENSEN/Data')

### Lists files of type .csv from a directory using relative path ####
list.files (path = 'data-shell/names', pattern = '.csv', recursive = TRUE)

### Defines character vector with relative file paths for each csv ####
relative_paths = list.files (path = 'data-shell/names', pattern = '.csv', recursive = TRUE, full.names = TRUE)

### Defines character vector with absolute file paths for each csv using previous variable ####
absolute_paths = normalizePath(relative_paths, winslash = '/')

### For loop that prints the first two lines of each of the csv (can use relative_paths or absolute_paths) ####
for (csvfiles in relative_paths) {
  print(readLines(csvfiles, n = 2))
}

## Week 2 practice from CLASS NOTES ####

### read csv from absolute path ####
setwd('/Users/parkerjorgensen/Documents/Data_Course_JORGENSEN/Data')
read.csv('/Users/parkerjorgensen/Documents/Data_Course_JORGENSEN/Data/1620_scores.csv')

### read csv from relative path ####
setwd('/Users/parkerjorgensen/Documents/Data_Course_JORGENSEN/Data')
read.csv('1620_scores.csv')

### create a dataframe ####
data = data.frame(
  Zr = c(1:10), # each subsequent row of script after date.frame( will define a column
  Si = c(4:13)
)
data

## **NOTE** Vector = 1 dim, same type (numeric, char, logic)
##          matrix = 2 dim, same type
##          array  = multi dim, same type
##          data frame = 2 dim, diff type, same length
##          list = multi dim, diff type, diff length