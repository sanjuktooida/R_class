data <- read.csv("C:/Users/User/Desktop/HN_16~18.csv", header = T)
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

names(df2_1cf_1year16)[names(df2_1cf_1year16) == "year"] = "연도"
names(df2_1cf_1year16)[names(df2_1cf_1year16) == "DF2_dg"] = "우울증여부"
names(df2_1cf_2year16)[names(df2_1cf_2year16) == "year"] ="연도"
names(df2_1cf_2year16)[names(df2_1cf_2year16) == "DF2_dg"] = "우울증여부"
names(df2_1cf_2year16)[names(df2_1cf_2year16) == "cfam"] = "가구원수"
names(df2_1cf_1year17)[names(df2_1cf_1year17) == "year"] = "연도"
names(df2_1cf_1year17)[names(df2_1cf_1year17) == "DF2_dg"] = "우울증여부"
names(df2_1cf_2year17)[names(df2_1cf_2year17) == "year"] = "연도"
names(df2_1cf_2year17)[names(df2_1cf_2year17) == "DF2_dg"] = "우울증여부"
names(df2_1cf_2year17)[names(df2_1cf_2year17) == "cfam"] = "가구원수"
names(df2_1cf_1year18)[names(df2_1cf_1year18) == "year"] = "연도"
names(df2_1cf_1year18)[names(df2_1cf_1year18) == "DF2_dg"] = "우울증여부"
names(df2_1cf_2year18)[names(df2_1cf_2year18) == "year"] = "연도"
names(df2_1cf_2year18)[names(df2_1cf_2year18) == "DF2_dg"] = "우울증여부"
names(df2_1cf_2year18)[names(df2_1cf_2year18) == "cfam"] = "가구원수"

df2_1cf_1year16
df2_1cf_1year17
df2_1cf_1year18
df2_1cf_2year16
df2_1cf_2year17
df2_1cf_2year18

df2_1 <- subset(data, data$DF2_dg == 1, select = c("year", "DF2_dg", "cfam"))
df2_1
names(df2_1)[names(df2_1) == "year"] = "연도"
names(df2_1)[names(df2_1) == "DF2_dg"] = "우울증여부"
names(df2_1)[names(df2_1) == "cfam"] = "가구원수"
df2_1

data$cfam <- ifelse(data$cfam > 1, 2, data$cfam)

df2_1$가구원수 <- ifelse(df2_1$가구원수 > 1, 2, df2_1$가구원수)
df2_1

library(ggplot2)
ggplot(df2_1, aes(x = 연도, y = 우울증여부, fill = factor(가구원수))) + 
  geom_bar(stat = "identity") + 
  labs(title = "연도및 가구원수 별 우울증 여부") + 
  xlab("연도") + 
  ylab("우울증여부")

ggplot(data, aes(x =year , y = cfam, fill = factor(cfam))) + 
  geom_bar(stat = "identity") + 
  labs(title = "연도별 우울증 여부") + 
  xlab("연도") + 
  ylab("우울증여부")

ggplot(df2cf_1year16, aes(x= "",y = DF2_dg, fill = factor(DF2_dg))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "16년도 1인가구 우울증비") +
  xlab("") +
  ylab("")

ggplot(df2cf_2year16, aes(x= "",y = DF2_dg, fill = factor(DF2_dg))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "16년도 다인가구 우울증비") +
  xlab("") +
  ylab("")

ggplot(df2cf_1year17, aes(x= "",y = DF2_dg, fill = factor(DF2_dg))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "17년도 1인가구 우울증비") +
  xlab("") +
  ylab("")

ggplot(df2cf_2year17, aes(x= "",y = DF2_dg, fill = factor(DF2_dg))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "17년도 다인가구 우울증비") +
  xlab("") +
  ylab("")

ggplot(df2cf_1year18, aes(x= "",y = DF2_dg, fill = factor(DF2_dg))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "18년도 1인가구 우울증비") +
  xlab("") +
  ylab("")

ggplot(df2cf_2year18, aes(x= "",y = DF2_dg, fill = factor(DF2_dg))) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  labs(title = "18년도 다인가구 우울증비") +
  xlab("") +
  ylab("")
