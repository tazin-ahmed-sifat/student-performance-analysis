# Student Performance Analysis

#load the dataset
student_data<-read.csv("student-mat.csv",sep=";")
student_data

#get column names
names(student_data)

#checking structure of data
str(student_data)

# Convert sex column to a factor
student_data$sex <- factor(student_data$sex)

# Check if the conversion worked
class(student_data$sex)

# Check the levels
levels(student_data$sex)

# Rename the levels
levels(student_data$sex) <- c("Female", "Male")

# Check the new levels
levels(student_data$sex)

#convert address into a factor
student_data$address<-factor(student_data$address)
# Check the levels
levels(student_data$address)
# Rename the levels
levels(student_data$address)<-c("Rural","Urban")
# Check the levels
levels(student_data$address)
# Check if the conversion worked
class(student_data$address)

# Convert family size into an ordered factor
student_data$famsize <- factor(
  student_data$famsize,
  ordered = TRUE,
  levels = c("LE3", "GT3"),
  labels=c("Small","Large")
)

# Check that family size is an ordered factor
class(student_data$famsize)

# Check the order of the levels
levels(student_data$famsize)

# View the first two family size values
student_data$famsize[1:2]

#convert pstatus into a factor
student_data$Pstatus<-factor(student_data$Pstatus)

# Check the levels
levels(student_data$Pstatus)

# Rename the levels
levels(student_data$Pstatus)<-c("Apart","Together")

# Check the levels
levels(student_data$Pstatus)

# Check if the conversion worked
class(student_data$Pstatus)

# Convert mother's education into an ordered factor and add descriptive labels
student_data$Medu <- factor(
  student_data$Medu,
  ordered = TRUE,
  levels = c(0, 1, 2, 3, 4),
  labels = c("None", "Primary", "Lower Secondary", "Secondary", "Higher")
)

# Check that mother's education is an ordered factor
class(student_data$Medu)

# Check the education levels and their order
levels(student_data$Medu)

# View the mother's education level for the first five students
student_data$Medu[1:5]

# Convert father's education into an ordered factor and add descriptive labels
student_data$Fedu <- factor(
  student_data$Fedu,
  ordered = TRUE,
  levels = c(0, 1, 2, 3, 4),
  labels = c("None", "Primary", "Lower Secondary", "Secondary", "Higher")
)

# Check that father's education is an ordered factor
class(student_data$Fedu)

# Check the education levels and their order
levels(student_data$Fedu)

# View the father's education level for the first five students
student_data$Fedu[1:5]

#Convert mothers' jobs into a factor
student_data$Mjob<-factor(student_data$Mjob)

#Check levels
levels(student_data$Mjob)


#rename the levels for readability 
levels(student_data$Mjob)<-c("At Home","Health","Other","Services","Teacher")

#check class
class(student_data$Mjob)

#check levels
levels(student_data$Mjob)       

# Convert fathers' jobs into a factor
student_data$Fjob <- factor(student_data$Fjob)

# Check levels
levels(student_data$Fjob)

# Rename the levels for readability
levels(student_data$Fjob) <- c("At Home", "Health", "Other", "Services", "Teacher")

# Check class
class(student_data$Fjob)

# Check levels
levels(student_data$Fjob)

#inspecting the next column
student_data$reason

# Convert student_data$reason into a factor
student_data$reason<-factor(student_data$reason)

# Check levels
levels(student_data$reason)

# Rename the levels for readability
levels(student_data$reason)<-c("Course","Home","Other","Reputation")

# Check class
class(student_data$reason)

# Check levels
levels(student_data$reason)

# Convert guardian into a factor
student_data$guardian <- factor(student_data$guardian)

# Check the current levels
levels(student_data$guardian)

# Rename the levels for readability
levels(student_data$guardian) <- c("Father", "Mother", "Other")

# Check that guardian is a factor
class(student_data$guardian)

# Check the renamed levels
levels(student_data$guardian)


# Convert travel time into an ordered factor and add descriptive labels
student_data$studytime <- factor(
  student_data$studytime,
  ordered = TRUE,
  levels = c(1, 2, 3, 4),
  labels = c("<2 hours", "2-5 hours", "5-10 hours", ">10 hours")
)

# Check that study time is an ordered factor
class(student_data$studytime)

# Check the study time levels and their order
levels(student_data$studytime)

# View the study time for the first five students
student_data$studytime[1:5]


# Check that number of past class failures is numeric
class(student_data$failures)

# View the first five values
student_data$failures[1:5]


# Convert school support into a factor
student_data$schoolsup <- factor(student_data$schoolsup)

# Check the current levels
levels(student_data$schoolsup)

# Rename the levels for readability
levels(student_data$schoolsup) <- c("No", "Yes")

# Check that school support is a factor
class(student_data$schoolsup)

# Check the renamed levels
levels(student_data$schoolsup)

# Convert family support into a factor
student_data$famsup <- factor(student_data$famsup)

# Check the current levels
levels(student_data$famsup)

# Rename the levels for readability
levels(student_data$famsup) <- c("No", "Yes")

# Check that family support is a factor
class(student_data$famsup)

# Check the renamed levels
levels(student_data$famsup)

#remaining yes/ no variables provide no learning value to me as i have already practised such problems above. Therefore, i will do the rest of those in one stretch so we can hop on to new avenues of learning 


# Convert remaining Yes/No variables into factors
student_data$paid <- factor(student_data$paid)
student_data$activities <- factor(student_data$activities)
student_data$nursery <- factor(student_data$nursery)
student_data$higher <- factor(student_data$higher)
student_data$internet <- factor(student_data$internet)
student_data$romantic <- factor(student_data$romantic)

# Rename the levels for readability
levels(student_data$paid) <- c("No", "Yes")
levels(student_data$activities) <- c("No", "Yes")
levels(student_data$nursery) <- c("No", "Yes")
levels(student_data$higher) <- c("No", "Yes")
levels(student_data$internet) <- c("No", "Yes")
levels(student_data$romantic) <- c("No", "Yes")

# Check that the variables are factors
class(student_data$paid)
class(student_data$activities)
class(student_data$nursery)
class(student_data$higher)
class(student_data$internet)
class(student_data$romantic)

# Check the renamed levels
levels(student_data$paid)
levels(student_data$activities)
levels(student_data$nursery)
levels(student_data$higher)
levels(student_data$internet)
levels(student_data$romantic)


# Convert quality of family relationships into an ordered factor
student_data$famrel <- factor(
  student_data$famrel,
  ordered = TRUE,
  levels = c(1, 2, 3, 4, 5),
  labels = c("Very Bad", "Bad", "Average", "Good", "Excellent")
)

# Check that family relationship quality is an ordered factor
class(student_data$famrel)

# Check the levels and their order
levels(student_data$famrel)

# View the first five students
student_data$famrel[1:5]


# Convert free time after school into an ordered factor
student_data$freetime <- factor(
  student_data$freetime,
  ordered = TRUE,
  levels = c(1, 2, 3, 4, 5),
  labels = c("Very Low", "Low", "Medium", "High", "Very High")
)

# Check that free time is an ordered factor
class(student_data$freetime)

# Check the levels and their order
levels(student_data$freetime)

# View the first five students
student_data$freetime[1:5]


# Convert going out with friends into an ordered factor
student_data$goout <- factor(
  student_data$goout,
  ordered = TRUE,
  levels = c(1, 2, 3, 4, 5),
  labels = c("Very Low", "Low", "Medium", "High", "Very High")
)

# Check that going out is an ordered factor
class(student_data$goout)

# Check the levels and their order
levels(student_data$goout)

# View the first five students
student_data$goout[1:5]


# Convert workday alcohol consumption into an ordered factor
student_data$Dalc <- factor(
  student_data$Dalc,
  ordered = TRUE,
  levels = c(1, 2, 3, 4, 5),
  labels = c("Very Low", "Low", "Medium", "High", "Very High")
)

# Convert weekend alcohol consumption into an ordered factor
student_data$Walc <- factor(
  student_data$Walc,
  ordered = TRUE,
  levels = c(1, 2, 3, 4, 5),
  labels = c("Very Low", "Low", "Medium", "High", "Very High")
)

# Check that both variables are ordered factors
class(student_data$Dalc)
class(student_data$Walc)

# Check the levels and their order
levels(student_data$Dalc)
levels(student_data$Walc)

# View the first five students
student_data$Dalc[1:5]
student_data$Walc[1:5]

# Convert current health status into an ordered factor
student_data$health <- factor(
  student_data$health,
  ordered = TRUE,
  levels = c(1, 2, 3, 4, 5),
  labels = c("Very Bad", "Bad", "Average", "Good", "Very Good")
)

# Check that health status is an ordered factor
class(student_data$health)

# Check the levels and their order
levels(student_data$health)

# View the first five students
student_data$health[1:5]


# Check that the remaining numerical variables are stored correctly
class(student_data$absences)
class(student_data$G1)
class(student_data$G2)
class(student_data$G3)

# View the first five values
student_data$absences[1:5]
student_data$G1[1:5]
student_data$G2[1:5]
student_data$G3[1:5]



# Check the structure of the cleaned dataset
str(student_data)

# Check for missing values
sum(is.na(student_data))

# View a summary of all variables
summary(student_data)