# lab exercise 1

# VECTORS:

# Q1.	Create a vector called vector1 with multiple elements. Find and display the maximum, minimum, mean, variance and standard deviation.
vector1 = c(1,2,3,4)
vector2 = c(5,6,7,8)
vector3= c(1,2,3,4) * c(5,6,7,8)
print(vector3)
# Q2.	Create a vector called vector1 with multiple elements. Find and display the maximum, minimum, mean, variance and standard deviation.
vector4 = c(1,2,3,4,5,6,7,8,9,10)
max(vector4)
min(vector4)
mean(vector4)
var(vector4)
sd(vector4)
# Q3.	Create a vector called vector1 with multiple elements. Sort the elements of vector1 in ascending order and display the sorted vector.
VECTOR5 = c(4,5,3,6,7,9,1)
sort(VECTOR5)
# q4.	Create a vector called vector1 with multiple elements. Check if a specific value exists in vector1 and display the result.c 
vectore6 = c(1,18,24,56,100,69)
69 %in% vectore6
# q5.	Create a vector called vector1 with multiple elements. Reverse the order of elements in vector1 and display the reversed vector.
vector7 = c(9,8,7,6,4,5,3,2,1)
rev(vector7)

# LIST:
# Q1.	Write a R program to create a list containing strings, numbers, vectors and a logical value. Access the first and second element of the list. and add element at the end of the list, remove the second element and update the last element.
lst = list("rishi", 353, c(1,2,3), TRUE)
lst[[1]]
lst[[2]]
lst[[2]] = c(lst,"new")
lst
lst[[2]] = NULL
lst[[length(lst)]] = "update"
lst
# q2.	Write a R program to count number of objects in a given list.
length(lst) 

# DATAFRAME:

# q1.	Write a R program to get the structure of a given data frame.
df = data.frame(A=1:5,
                B=c(1,2,NA,3,NA),
                C=letters[1:5])
str(df)
# q2.	Write a R program to get the statistical summary and nature of the data of a given data frame.
summary(df)
# q3.	Write a R program to extract specific column from a data frame using column name.
df$C
# q4.	Write a R program to extract first two rows from a given data frame.
head(df,2)
# q5.	Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame
df[c(3,5), c(1,3)]
# q6.	Write a R program to add a new column and row in a given data frame.
df$D = 11:15
df = rbind(df,data.frame(A=6, B=7, C="F", D=8))
df
# q7.	Write a R program to replace NA values with 13 in a given data frame.
df[is.na(df)]=13
df
# q8.	Write a R program to sort a given data frame by column(s).
df[order(df$A),]
df
# q9.	Write a R program to drop row(s)/col(s) by number from a given data frame.
df[-c(2), -c(1)]

# MATRIX:

# q1.	Write a R program to create a matrix [col-wise] taking a given vector of numbers as input and define the column and row names. Display the matrix. 
m = matrix(1:16, 
           nrow = 4,
           ncol = 4)
m
# q2.	Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix. 
m[2,3]
m[,3]
m[4,]
# q3.	Write a R program to create two 2x3 matrix [row wise] and add, subtract, multiply and divide the matrices element wise.
m2 = matrix(1:6, 
           nrow = 2,
           ncol = 3,
           byrow = TRUE)
m1 = matrix(6:1, 
            nrow = 2,
            ncol = 3,
            byrow = TRUE)
add = m1+m2
add
sub = m1-m2
sub
multi = m1*m2
multi
div = m1/m2
div

# q4.	Write a R program to create a matrix of order 5x5 and find its determinate, inverse and transpose.

m3 = matrix(c(1,2,0,0,5,7,8,9,0,1,2,3,4,5,6,7,8,3,4,3,5,6,11,2,3),
            nrow = 5,
            ncol = 5)
m3
det(m3)
solve(m3)
t(m3)

# q5.	Write a R program to create a matrix of order 9x5 and extract its 5th row and 5th  col.
m4 = matrix(1:45,
            nrow = 9,
            ncol = 5,
            byrow = TRUE) 
m4
m4[5,5]

# q6.	Write a R program to create a matrix of order 5x5 and multiply it by scalar 9.
m5 = matrix(1:25,
            nrow = 5,
            ncol = 5)
m5
A = m5*9
A
# q7.	Write a R program to create a matrix of order 11x5 and find the mean of 2nd row, variance of 3rd col, standard deviation of 4th row.
m6 = matrix(1:55,
            nrow = 11,
            ncol = 5)
m6
mean(m6[2,])
var(m6[,3])
sd(m6[4,])
# q8.	Write a R program to create a matrix of order 7x8 and find the row and col sum, row and col mean.
m7= matrix(1:56,
           nrow = 7,
           ncol = 8)
m7
r = rowSums(m7)
r
c = colSums(m7)
c
mean(r)
mean(c)
# q9.	Write a R program to create a matrix of order 11x9 and drop 2nd row and 4th col.
m8 = matrix(1:99,
            nrow = 11,
            ncol = 9)
m8
b= m8[-2,-4]
b
# q10.	Write a R program to create a matrix of order 9x5 and add one row and one col.

m9 = matrix(1:45,
            nrow = 9,
            ncol = 5)
m9
new_row = c(1,2,3,4,5,6,7,8,9)
new_col = c(1,2,3,4,5)
m9 = rbind(m9,new_row)
m9 = cbind(m9, new_col)
m9
