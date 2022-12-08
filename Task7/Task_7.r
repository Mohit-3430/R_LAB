# Given 4 vectors consisiting of data, convert it into dataframe:
names <- c("aaaa", "bbbb", "cccc", "dddd", "eeee")
roll_no <- c(4, 8, 12, 16, 20)
subjects <- c("AI", "CN", "DWDM", "IOT", "R")
marks <- c(96, 100, 100, 96, 95)

df <- data.frame(name = names, rollno = roll_no, subname = subjects, marks = marks)
print(df)

print(df$name)

df$branch = c('AIML', 'CSE', 'IT', 'EEE', 'ECE')

print("After adding seperate column:")
print(df)

print(df[c('name', 'branch')])

df[1,1] = "AAAA"

print(df)