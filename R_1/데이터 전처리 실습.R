install.packages("data.table")
library(data.table)
hn_2009 <- fread("C:/Users/User/Desktop/a.csv")
hn_2010 <- fread("C:/Users/User/Desktop/b.csv")
hn_2011 <- fread("C:/Users/User/Desktop/c.csv")
hn_2009
hn_2010
hn_2011

#fill = TRUE 변수명이 둘라도 적용시킴 즉 누락된 변수에 대해 처리
combined_df <- rbindlist(list(hn_2009, hn_2010, hn_2011),
                         fill = TRUE)

dim(combined_df)

#2009년의 컬럼네임을 다 가져오고 행,열을 가져오되 에러 없이
#굴러가기 위해서 with = FALSE사용
col = colnames(hn_2009)
col_2009 <- combined_df[, col, with = FALSE]

df <- fread("C:/Users/User/Desktop/HN_19~21.csv")
#모든 결측치 제거 데이터가 적으면 많은 데이터가 날아감 자주사용X
df_clean <- na.omit(df)

#sapply 모든 행에 접근해서 numeric이면 TRUE값으로 보고 가져옴
df_numeric <- df[, sapply(df, is.numeric), with = FALSE]
sub_df_numeric <- df[, 1:8, sapply(df, is.numeric), with = FALSE]
df_character <- df[, sapply(df, is.character), with = FALSE]
dim(df_numeric)
dim(df_character)

install.packages("mice")
library(mice)
#m 몇개의 후보를 추출할 것인가
#maxit 몇번의 학습을 할것인가
#seed 랜덤으로 일어나는 시행에 그 값을 고정
imputed_data <- mice(sub_df_numeric, m = 5, maxit = 10,
                     metho = "pmm", seed = 1235)

completed_data <- complete(imputed_data, 1) #1번째 데이터 사용
completed_data
fwrite(completed_data, "C:/Users/User/Desktop/실습.csv")

install.packages("dplyr")
library(dplyr)
a <- fread("C:/Users/User/Desktop/earlyadopter.csv")
#~는 이 함수에 대해서 시작을 하겠다를 의미
#.은 모든 데이터
mutate(a, across(c("20s", "30s", "40s", "50s", "60s"),
                 ~ifelse(. > 6.0, "Hgih", .)))

mutate(a, across(c("20s", "30s", "40s", "50s", "60s"),
                 ~case_when(. > 6.0 ~ 1, . >= 2.5 & . < 6.0 ~ 2,
                            . < 2.5 ~ 3, TRUE ~ .)))
#as.character(.) 모든 데이터를 character로 바꾸겠다.
mutate(a, across(c("20s", "30s", "40s", "50s", "60s"),
                 ~case_when(. > 6.0 ~ "High", . >= 2.5 & . < 6.0 ~ "Medium",
                            . < 2.5 ~ "Low", TRUE ~ as.character(.))))