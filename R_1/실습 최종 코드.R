data <- read.csv("C:/Users/skf34/OneDrive/바탕 화면/HN_16~18.csv", header = T)
data

df2cf_1year16 <- subset(data, data$year == 2016 & data$cfam == 1,
                          select = c("year", "DF2_dg"))
df2cf_1year16
df2cf_2year16 <- subset(data, data$cfam > 1  & data$year == 2016,
                          select = c("year", "DF2_dg"))
df2cf_2year16
df2cf_1year17 <- subset(data, data$cfam == 1  & data$year == 2017,
                          select = c("year", "DF2_dg"))
df2cf_1year17
df2cf_2year17 <- subset(data, data$cfam > 1  & data$year == 2017,
                          select = c("year", "DF2_dg"))
df2cf_2year17
df2cf_1year18 <- subset(data, data$cfam == 1  & data$year == 2018,
                          select = c("year", "DF2_dg"))
df2cf_1year18
df2cf_2year18 <- subset(data, data$cfam > 1  & data$year == 2018,
                          select = c("year", "DF2_dg"))
df2cf_2year18

df16cf1 <- c("우울증있음", "우울증없음", "비해당", "모름")
df16cf11 <- c(44, 616, 0, 32)
df16cf1per <- c(6.36, 89.02, 0, 4.62)

df16cf12 <- data.frame(우울증여부 = df16cf1, 명수 = df16cf11, 백분율 = df16cf1per)
df16cf12

df16cf2 <- c("우울증있음", "우울증없음", "비해당", "모름")
df16cf21 <- c(233, 4948, 1669, 255)
df16cf2per <- c(3.12, 66.34, 22.38, 3.42)

df16cf22 <- data.frame(우울증여부 = df16cf2, 명수 = df16cf21, 백분율 = df16cf2per)
df16cf22

df17cf1 <- c("우울증있음", "우울증없음", "비해당", "모름")
df17cf11 <- c(66, 701, 2, 53)
df17cf1per <- c(8.03, 85.28, 0.24, 6.45)

df17cf12 <- data.frame(우울증여부 = df17cf1, 명수 = df17cf11, 백분율 = df17cf1per)
df17cf12

df17cf2 <- c("우울증있음", "우울증없음", "비해당", "모름")
df17cf21 <- c(181, 4903, 1507, 286)
df17cf2per <- c(2.48, 67.12, 20.63, 3.92)

df17cf22 <- data.frame(우울증여부 = df17cf2, 명수 = df17cf21, 백분율 = df17cf2per)
df17cf22

df18cf1 <- c("우울증있음", "우울증없음", "비해당", "모름")
df18cf11 <- c(53, 727, 0, 30)
df18cf1per <- c(6.54, 89.75, 0, 3.70)

df18cf12 <- data.frame(우울증여부 = df18cf1, 명수 = df18cf11, 백분율 = df18cf1per)
df18cf12

df18cf2 <- c("우울증있음", "우울증없음", "비해당", "모름")
df18cf21 <- c(224, 4984, 1405, 217)
df18cf2per <- c(3.12, 69.40, 19.56, 3.02)

df18cf22 <- data.frame(우울증여부 = df18cf2, 명수 = df18cf21, 백분율 = df18cf2per)
df18cf22

df2_1 <- subset(data, data$DF2_dg == 1, select = c("year", "DF2_dg", "cfam"))
df2_1
names(df2_1)[names(df2_1) == "year"] = "연도"
names(df2_1)[names(df2_1) == "DF2_dg"] = "우울증여부"
names(df2_1)[names(df2_1) == "cfam"] = "가구원수"
df2_1

data$cfam <- ifelse(data$cfam > 1, 2, data$cfam)
data

df2_1$가구원수 <- ifelse(df2_1$가구원수 > 1, 2, df2_1$가구원수)
df2_1

install.packages("ggplot2")
library(ggplot2)
ggplot(df2_1, aes(x = 연도, y = 우울증여부, fill = factor(가구원수))) + 
  geom_bar(stat = "identity") + 
  labs(title = "연도및 가구원수 별 우울증 여부") + 
  xlab("연도") + 
  ylab("우울증여부")

ggplot(data, aes(x =year , y = cfam, fill = factor(cfam))) + 
  geom_bar(stat = "identity") + 
  labs(title = "연도별 인구 비율") + 
  xlab("연도") + 
  ylab("인구수")

ggplot(df16cf12, aes(x= "",y = 명수, fill = 우울증여부)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(x = 2, label = paste0(백분율, "%")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "16년도 1인가구 우울증비") +
  xlab("") +
  ylab("") +
  theme_void()

ggplot(df16cf22, aes(x= "",y = 명수, fill = 우울증여부)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(x = 2, label = paste0(백분율, "%")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "16년도 다인가구 우울증비") +
  xlab("") +
  ylab("") +
  theme_void()

ggplot(df17cf12, aes(x= "",y = 명수, fill = 우울증여부)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(x = 2, label = paste0(백분율, "%")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "17년도 1인가구 우울증비") +
  xlab("") +
  ylab("") +
  theme_void()

ggplot(df17cf22, aes(x= "",y = 명수, fill = 우울증여부)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(x = 2, label = paste0(백분율, "%")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "17년도 다인가구 우울증비") +
  xlab("") +
  ylab("") +
  theme_void()

ggplot(df18cf12, aes(x= "",y = 명수, fill = 우울증여부)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(x = 2, label = paste0(백분율, "%")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "18년도 1인가구 우울증비") +
  xlab("") +
  ylab("") +
  theme_void()

ggplot(df18cf22, aes(x= "",y = 명수, fill = 우울증여부)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(x = 2, label = paste0(백분율, "%")),
            position = position_stack(vjust = 0.5)) +
  labs(title = "18년도 다인가구 우울증비") +
  xlab("") +
  ylab("") +
  theme_void()

