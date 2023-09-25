Vector <- c("aa", 2, 3)
List_1 <- list(1.6, 2.3, 3.5)
List_2 <- list(2.6, 5.3, 7.5)
List_1 + List_2
Vector_1 <- c(1.6, 2.3, 3.5)
Vector_2 <- c(2.6, 5.3, 7.5)
Vector_1 + Vector_2

matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 4)

a <- matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2)
a
b <- matrix(data = c(1, 2, 3, 4, 5, 6), ncol = 2)
b
c <- matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, byrow = TRUE)
c
d <- matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, byrow = FALSE)
d

m = matrix(c(1, 2, 3, 4), nrow = 2)
m
rownames(m) = c("Row1", "Row2")
colnames(m) = c("Col1", "Col2")
m
row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2")
dimnames(m) = list(row_names, col_names)
m

matrix(data = c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
array(data = c(1, 2, 3, 4, 5, 6),  dim = c(2, 3, 2))

array(data = c(1, 2, 3, 4, 5, 6),  dim = c(2, 2, 2))

a = array(data=c(1, 2, 3, 4, 5, 6), dim = c(2, 2))
b = array(data=c(1, 2, 3, 4, 5, 6), dim = c(2, 2))
cbind(a,b)
rbind(a,b)

my_array <- array (1:12, dim = c(2, 3, 2))

row_names <- c("Row1", "Row2")
col_names <- c("Col1", "Col2", "Col3")
slice_names <- c("Slice1", "Slice2")
dimnames(my_array) <- list(row_names, col_names, slice_names)
my_array

#이름을 붙이고 싶지 않을 경우
dimnames(my_array) <- list(NULL, col_names, slice_names)
my_array

a = "abcdefg"
substr(a, 1, 3)

a <- list(1, 2, 3, 4, 5, 6)
a[1]
a[-1]
a[1:6]
typeof(a[1])
typeof(a[[2]])


b <- c(1, 2, 3, 4, 5)
b[1]
b[[1]]
typeof(b[1])
typeof(b[[1]])
c = array(data = c(1, 2, 3, 4, 5, 6), dim = c(2, 3))
c
c[2]
c[1, 2]
c = array(data = c(1, 2, 3, 4, 5, 6), dim = c(2, 3, 2))
c
c[2]
c[1, 2, 3]

my_list <- list("apple", 3.14, c(1, 2, 3),TRUE)
my_list[[3]][2]
my_list[3]
my_list[[3]]
typeof(my_list[[3]][2])
typeof(my_list[3])
typeof(my_list[[3]])

my_vec <- c("apple", 3.14, c(1, 2, 3), TRUE)
my_vec[[3]][2]
my_vec[3]
my_vec[[3]]

my_array <- array(c(5, 3, 1, 5, 7, 8, 10), dim = c(2,3))
my_array[1, 2]
my_array[2, 1]
my_array[1, ]
my_array[, 2]

arram <- array(c(1:20), dim = c(2, 5, 2))
arram
arram[1, 3, 1]
arram[2, 3, 2]

city <- c("Seoul", "Busan", "Daegu", "Seoul", "Busan", "Daegu", "Ulsan")
pm25 <- c(18, 21, 21, 17, 8, 11, 25)

df <- data.frame(city = city, pm25 = pm25)
df
df[1]
df[[1]]
df$city
df$city[1:3]

a <- array(c("A", "B", "B", "B", "B", "A", "A", "A", "A", "A", "B", "B"))
b <- array(c(5000, 12000, 13000, 8000, 9000, 3000, 5000, 4000, 4500, 6000, 8000, 8500))
c <- array(c(2500, 5000, 6000, 5500, 7000, 4600, 3000, 2500, 3400, 4700, 6400, 4400))
a
b
c

d <- array(c(1:32), dim = c(4,8))
d
e <- array(c(1:32), dim = c(2,4,2,2))
e
e[2,2,1,2]
e[2,3,2,2]

f <- array(c(1:12), dim = c(4,3))
g <- array(c(13:24), dim = c(4,3))
f
g
fbind <- rbind(f, g)
gbind <- cbind(f, g)
fbind
gbind
row_names1 <- c("1행", "2행", "3행", "4행", "5행", "6행", "7행", "8행")
col_names1 <- c("1열", "2열", "3열")
dimnames(fbind) = list(row_names1, col_names1)
fbind
col_names2 <- c("1열", "2열", "3열", "4열", "5열", "6열")
row_names2 <- c("1행", "2행", "3행", "4행")
dimnames(gbind) = list(row_names2, col_names2)
gbind

df1 <- data.frame(alpabet = a, number1 = b, number2 = c)
df1
