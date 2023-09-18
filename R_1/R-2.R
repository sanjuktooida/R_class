a=c(1, 2, 3, 4, 5, 6)

sum(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10))

seq(from=1, to = 5, by = 2)
seq(1, 5, by = 2)
seq(0, 1, length.out = 1000)

rep(c(1, 2, 3), times = 2)
rep(c(1, 2, 3), each = 2)

a = 3
b = 4

print(a)
print(b)

print(a, b)
print(a, "님의 점수는", b, " 점 입니다")

paste(3, 4, 5, 6, 7)
print(paste(3, 4, 5, 6, 7))

paste0(3+4, 4, 5, 6, 7)
print(paste0(3+4, 4, 5, 6, 7))

paste(3, 4, 5, 6, 7, sep = "-")
paste0(3+4, 4, 5, 6, 7, sep = "-")

sample(10)
sample(45, 6)
sample(10, 3, replace  = TRUE)
sample(10, 3, prob = (1:10)/11)
sample(10, 3, prob = c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))

runif(5, 1, 100)
rnorm(10, 6, 40)
rbinom(5, 11, prob = (1:100)/10)

getwd()
setwd("C:\\Users\\User\\Desktop\\R\\")
setwd("C:/Users/User/Desktop/R/")

seq(1, 100, by = 5)
rep(c(1, 2, 3, 4, 5), times = 100)
rep(c(1, 2, 3, 4, 5), each = 100)
print(sample(10, 5))
sample(49, 6)
sample(10, 3, replace = TRUE)
sample(10, 3, prob = (1:10)/55)
sample(10, 3, prob = c(0.1, 0.2, 0.3, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05, 0.05))
runif(100, 55, 100)
rnorm(200, 100, 15)
sum(rbinom(500, 1, prob = 1/10))

List1 <- list(1, 2, 3)
List2 <- list(1.6, 2.3, 3.5)
List3 <- list("사", "랑", "이", "란")
List4 <- list("isn't", 5, "like", 5.6)
List1
List2
List3
List4

Vector <- c(1, 2, 3, "vector")
char_vector <- c("apple", "banana", "orange")
logical_vector <- c(TRUE, FALSE, TRUE, 1)
Vector
char_vector
logical_vector

Vector1 <- c(1, 2, 3)
List5 <- list(1, 2, 3)
print(Vector1)
print(List5)

List_1 <- list(1.6, 2.3, 3.5)
List_2 <- list(2.6, 5.3, 7.5)
List_1 + List_2
Vector_1 <- c(1.6, 2.3, 3.5)
Vector_2 <- c(2.6, 5.3, 7.5)
Vector_1 + Vector_2

my_list <- list("apple", 3.14, c(1, 2, 3), TRUE)
my_list
