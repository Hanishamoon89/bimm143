#' ---
#' title: "Crop Analysis Q3 2013"
#' author: "John Smith"
#' date: "May 3rd, 2014"
#' output: github_document
#' ---

# Class 05 R graphics intro

# My first boxplot
x <- rnorm(1000,0)
boxplot(x)  

summary(x)
hist(x)

boxplot(x,horizontal = TRUE)

# Hands on session 2 
weight <- read.table("bimm143_05_rstats/weight_chart.txt",header = TRUE)
plot(weight,pch=15,cex=1.5,lwd=2,ylim=c(2,10), xlab="age (months)",ylab="weight (kg)", main="some title")


plot(weight$Age, weight$Weight, typ="o", pch=15, cex=1:4, col="red", lwd=3, ylim=c(2,10), xlab="age(months)",ylab="weight(kg)", main= "Baby weight with Age")


#Try a barplot
barplot(VADeaths, beside = TRUE)
barplot(VADeaths,beside=FALSE)

 ## Input our eature count data
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", header = TRUE, sep= "\t")
barplot(mouse$Count,horiz= TRUE, names.arg= mouse$Feature, las=2)

# change margin so we can see the labels
par(mar=c(5.1, 11.1, 4.1, 2.1))
barplot(mouse$Count, horiz=TRUE, names.arg= mouse$Feature, las=2)

#add some color
barplot(mouse$Count, horiz=TRUE, names.arg = mouse$Feature, las=2, col=rainbow(11))

par(mar=c(3.1, 11.1, 4.1,2))
barplot(mouse$Count, names.arg=mouse$Feature, horiz=TRUE, ylab="", main="Number of features in the mouse GRcm38 genome", las=1, xlim=c(0,80000))

#section 3: Using color in plots
mf<-read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(mf$Count, names.arg = mf$Sample, col = rainbow(nrow(mf)), las=2, ylab = "Counts")

barplot(mf$Count, names.arg = mf$Sample, col=c("blue2", "red2"), las=2, ylab = "Counts")


#coloring by value
genes <- read.delim("bimm143_05_rstats/up_down_expression.txt")

# Expresion data

e<- read.table("bimm143_05_rstats/up_down_expression.txt", header = TRUE)

# how many genes
nrow(e)

# How many up, down and all around?
#table(e$state)

plot(e$Condition1, e$Condition2, col=e$State)

# Play
palette(c("red","green","blue"))
plot(e$Condition1, e$Condition2, col=5)
boxplot(x,horizontal = TRUE)
#?read.table
# Hands on session 2 
weight <- read.table("bimm143_05_rstats/weight_chart.txt",header = TRUE)
#View(weight)
plot(weight,pch=15,cex=1.5,lwd=2,ylim=c(2,10), xlab="age (months)",ylab="weight (kg)", main="some title")


