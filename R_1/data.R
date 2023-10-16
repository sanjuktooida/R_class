id <- c(1:5)
gender <- c("M", "F", "F", "M", "M")
major <- c("Eng", "Math", "Com", "Eng", "Busi")
salary <- c(2500, 2800, 2500, 3000, 2600)
survey <- data.frame(ID = id, Gender = gender, Major = major,
                     Salary = salary, stringsAsFactors = FALSE)
survey

head(survey, n = 3) #survey의 내용을 앞에서 3행만큼 출력
tail(survey, n = 3) #survey의 내용을 뒤에서 3행만큼 출력
survey$Salary #salary열을 벡터구조로 추출
survey[["Salary"]] #salary열을 벡터구조로 추출
survey["Major"] #Major열을 추출
survey[2] #2열을 데이터프레임 구조로 추출
survey[[2]] #2열을 벡터 구조로 추출

survey$score = c(200, 300, 400, 500, 600)
survey
survey$ss = survey$Salary + survey$score
survey

name <- c("John", "Jane", "Smith", "Doe")
age <- c(28, 32, 45, 22)
name_age_df <- data.frame(Name = name, Age = age,
                          stringsAsFactors = FALSE)
summary(survey)
typeof(survey$ID)
mode(survey$ID)
survey$ID = as.factor(survey$ID)
typeof(survey$ID)
mode(survey$ID)
survey$ID = as.character(survey$ID)
typeof(survey$ID)
mode(survey$ID)
summary(survey)

names(survey)
names(survey)[names(survey)=="ID"] = "IDcode"
names(survey)[names(survey)=="Gender"] = "Sex"
names(survey)[names(survey)=="Major"] = "MJ"
names(survey)[names(survey)=="Salary"] = "SR"
names(survey)[names(survey)=="score"] = "SC"
names(survey)[names(survey)=="ss"] = "SS"
names(survey)
survey

survey[c(1, 2)]
survey[c(-1, -2)]
survey[survey$Sex == "F",]
survey[survey$MJ == "Eng"&survey$SR>2600,]
survey[, c(1, 2)]
survey[, c(-1, -2)]

survey1 <- data.frame(IDcod = id[2:3], Sex = gender[2:3],
                      MJ = major[2:3], SR = salary[2:3],
                      stringsAsFactors = FALSE)
survey1
survey2 <- data.frame(IDcode = id[4:5], Sex = gender[4:5],
                     MJ = major[4:5], SR = salary[4:5],
                     stringsAsFactors = FALSE)
survey2
survey3 <- cbind(survey1, survey2)
survey4 <- rbind(survey1, survey2)
survey3
survey4

survey
survey5 <- subset(survey, survey$Sex == "F")
survey5
survey6 <- subset(survey, survey$SR > 2600,
                  select = c("IDcode", "MJ", "SR"))
survey6

name_age_df <- data.frame(
  Name = c("Kim Cheol-soo", "Lee Cheol-soo", "Kim Young-hee", "Lee Young-hee",
           "Kim Min-jun", "Park Min-jun", "Kim Ji-young", "Park Ji-young"),
  Age = c(20, 24, 21, 24, 35, 40, 34, 35), stringsAsFactors = FALSE)
name_age_df
library(tidyr)
name_age_df <- separate(name_age_df, col = "Name", into = c("LastName",
                                                            "FirstName"), sep = "-")
name_age_df

data <- read.csv("C:/Users/User/Desktop/test.csv", header = TRUE,
                 stringsAsFactors = FALSE, fileEncoding = "cp949")
data
write.csv(survey, "C:/Users/User/Desktop/survey1.csv", row.names = FALSE)
