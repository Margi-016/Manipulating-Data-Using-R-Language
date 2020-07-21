#install.packages('dplyr')
library(dplyr)

#creating first dataframe 
std1 <- data.frame(Student_Id = c(1012301, 1012302, 1012303, 1012304),
                      Age = c(20, 19, 20, 19))
print(std1)

#creating second dataframe 
std2 <- data.frame(Student_Id = c(1012301, 1012302, 1012304, 1012305),
                      Sex = c('M', 'M', 'F', 'F'))
print(std2)


# Inner Join ---------------------------------------------------------

InnerJoin <- inner_join(x = std1, y = std2, by = "Student_Id")
print(InnerJoin)


# Full Join ---------------------------------------------------------

FullJoin <- full_join(x = std1, y = std2, by = "Student_Id")
print(FullJoin)


# Left Join ---------------------------------------------------------

LeftJoin <- left_join(x = std1, y = std2, by = "Student_Id")
print(LeftJoin)


# Right Join ---------------------------------------------------------

RightJoin <- right_join(x = std1, y = std2, by = "Student_Id")
print(RightJoin)


# Semi Join ---------------------------------------------------------

SemiJoin <- semi_join(x = std1, y = std2, by = "Student_Id")
print(SemiJoin)

# Anti Join ---------------------------------------------------------

AntiJoin <- anti_join(x = std1, y = std2, by = "Student_Id")
print(AntiJoin)