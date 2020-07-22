#install.packages('dplyr')
library(dplyr)

# create dataframe
student <- data.frame(Student_Id = c(1012301, 1012302, 1012303, 1012304, 1012305),
                 Firstname = c('John', 'Jeff', 'Ronald', 'Jennifer', 'Jessica'),
                 Lastname = c('Novak', 'Barr', 'Lum', 'Forbis', 'Connor'),
                 Subject_Id = c('SAE6A', 'SAE6B', 'SAE6C', 'SAE6G', 'SAE61'),
                 Age = c(20, 19, 20, 19, 20),
                 Sex = c('M', 'M', 'M', 'F', 'F'))
print(student)


# Select Function ---------------------------------------------------------
#select column 1 to 3 and 5

df <- select(student, Student_Id, Firstname, Lastname, Age)
print(df)
df <- select(student, 1:3, 5)
print(df)

#select all except column 5
df <- select(student, -5)
df

#select all except Student_Id and Subject_Id
df <- select(student, -Student_Id, -Subject_Id)
df

#identify column which is start with 'sub'
df <- select(student, starts_with('sub'))
df

#identify column which is end with 'Id'
df <- select(student, ends_with('Id'))
df

#identify column which contains 'name'
df <- select(student, contains('name'))
df

# Filter Function ---------------------------------------------------------

df <- filter(student, Sex=='F')
df

df <- filter(student, Age>19)
df

df <- filter(student, Age>19 & Sex=='F')
df

df <- filter(student, Firstname=='John' | Firstname=='Ronald')
df


# Arrange Function --------------------------------------------------------

df <- arrange(student, Age)
df

df <- arrange(student, desc(Age))
df

# Mutate Function ---------------------------------------------------------
df <- mutate(student, Smester = 'Y')
df

df <- mutate(student, Smester = ifelse(Age < 20, 'Sem-1', 'Sem-2'))
df


# Rename Function ---------------------------------------------------------
df<- rename(student, AGE = Age)
df

df<- rename(student,
            STUDENT_ID = Student_Id,
            FIRSTNAME = Firstname,
            LASTNAME = Lastname,
            SUBJECT_ID = Subject_Id,
            AGE = Age,
            SEX = Sex)
df

# Summarize Function ------------------------------------------------------
df <- summarise(student, mean(Age))
df

df <- summarise(student, mean(Age), na.rm = TRUE)
df

df <- summarise(student, mean(Age), n_distinct(Age))
df

df <- summarise(student, AvgAge = mean(Age), N = n_distinct(Age))
df