#install.packages('tidyr')
library(tidyr)

#Separate Function ---------------------------------------------------------
df1 <- data.frame(Firstname = c('John', 'Jeff', 'Ronald', 'Jennifer', 'Jessica'),
                   Lastname = c('Novak', 'Barr', 'Lum', 'Forbis', 'Connor'),
                   Birthdate = c('15/05/1980', '08/05/1990', '24/07/1988', '19/11/2000', '31/12/1997'))
print(df1)

sept <- separate(data = df1,
                   col  = Birthdate,  
                   into = c('Date', 'Month', 'Year'),
                   sep = '/',convert = TRUE) 
print(sept)


#Unite  Function ---------------------------------------------------------

unt <- unite(data = df1, 
                col  = Name,
                Firstname, 
                Lastname, 
                sep  = ' ') 
print(unt)


#Pivot_wider Function ---------------------------------------------------------

df2 <- data.frame(Week = c('Week1', 'Week1', 'Week2', 'Week2', 'Week3', 'Week3', 'Week4', 'Week4'),
                  Assignment = c('Assignment1', 'Assignment2', 'Assignment1', 'Assignment2', 'Assignment1', 'Assignment2', 'Assignment1', 'Assignment2'),
                  Completed = c(3, 5, 4, 3, 5, 4, 3, 5))
print(df2)

pivot_wider(data = df2, 
            id_cols = Week,
            names_from = Assignment, 
            values_from = Completed)


#Pivot_longer  Function ---------------------------------------------------------

df3 <- data.frame(Student = c('John', 'Jeff', 'Ronald', 'Jennifer', 'Jessica'),
                  Maths = c(79, 64, 86, 92, 50),
                  Physics = c(62, 45, 94, 83, 65),
                  Chemistry = c(99, 61, 87, 91, 80))
print(df3)

pivot_longer(data =  df3, 
             cols = -Student, 
             names_to = "Subject", 
             values_to = "Marks")
