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

