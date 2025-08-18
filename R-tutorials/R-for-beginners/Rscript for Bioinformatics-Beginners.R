#print statements
print("hello world")
print(1)


#assignments
dna <- "ATCGC"
print(dna)

dna_seq <- "ATCAGGA"
print(dna_seq)

number <- 20
print(number)

#install packages

#install stringr
install.packages('stringr')

#load packages
library(stringr)


#Data types

#numeric data type

numeric_integer <- 10
class(numeric_integer)

numeric_float <- 1.2
class(numeric_float)


#characters
dna_seq <- "ATCGACTA"
class(dna_seq)

nucleotide <- 'A'
class(nucleotide)

nchar(dna_seq)
seq_length <- nchar(dna_seq)
print(seq_length)

new_seq <- paste0(dna_seq,"GGG")
print(new_seq)

dna_seq <- "ATCGACTA"

str_count(dna_seq,"A")

a_count <- str_count(dna_seq,"A")

print(a_count)


#logical data type

logical_value <- TRUE
logical_value2 <- T

class(logical_value)

logical_value3 <- FALSE



#vector

#numeric vector
num_vector <- c(1,2,3)
class(num_vector)

length(num_vector)

#character vector
char_vector <- c("ATC","GGA","AAT","AGC")
length(char_vector)
nchar(char_vector)


#logical vector
logical_vector <- c(TRUE,TRUE,F,F,FALSE)
class(logical_vector)



#lists
list_example <- list(char_vector,logical_vector,num_vector)

class(list_example)

list_example 


length(list_example)


#indexing
list_example[1]
char_vector[1]


#dataframe
char_vector <- c("A","G","T","C")
num_vector <- c(1,2,3,4)
logical_vector <- c(T,T,F,T)

df <- data.frame(Numeric=num_vector,Logical=logical_vector,Character=char_vector)
class(df)

print(df)


#Basic Arithmetic Operations

#addition
3+7
total <- 3+7
print(total)

#subtraction
10-6

#multiplication
3*2

#division
10/2
5/2


#calculating gc content
dna_seq <- "GTATCATACAGAC"
seq_length <- nchar(dna_seq)
g_count <- str_count(dna_seq,'G')
c_count <- str_count(dna_seq,'C')

gc_content <- (g_count + c_count)/seq_length * 100

print(gc_content)


#Conditional Statements

dna_seq1 <- "AGATTAT"
dna_seq2 <- "ATA"


seq_length <- nchar(dna_seq1)
print(seq_length)
seq_length >6


if (seq_length >6) {     
print('long sequence')  
}

seq_length <- nchar(dna_seq2)
print(seq_length)

if (seq_length >6) {     
  print('long sequence')  
} else {  
print('short sequence')  
}



#Loops

nucleotides <- c("A","T","C","G")

for ( base in nucleotides ) {
  
print(base)  
  
}



#Functions

calculate_gc_content <- function(sequence) {  
  
seq_length <- nchar(sequence)  
g_count <- str_count(sequence,'G')
c_count <- str_count(sequence,'C')

gc_content <- (g_count + c_count) /seq_length * 100

print(gc_content)

}

dna_seq <- "ATCCGA"

calculate_gc_content("ATCCCGATTTA")



#Data Manipulation in R

#import 

data_source="https://github.com/vappiah/Machine-Learning-Tutorials/raw/main/datasets/malaria_clin_data.csv"

case_data <- read.csv(data_source)


#explore
class(case_data)
dim(case_data)
colnames(case_data)

#subset
case_data[,'Clinical_Diagnosis']

unique(case_data[,'Clinical_Diagnosis'])


#export 
write.csv(case_data,'exported_data.csv')




#Data Visualization

#bar chart

#values to be plotted
snp_count <- c(17, 10,2,13)
sample_id <- c("P001","P002","P003","P004")

#plot the bar chart
barplot(snp_count, names.arg=sample_id,xlab="Sample",ylab="Number of snps",
        col="green",main="SNP Count")






































