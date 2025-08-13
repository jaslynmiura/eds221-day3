# basic if statement

burrito <- 1.5 # assigning an object value

# write a short if statement
if (burrito > 2) {
  print("I love burritos!")
}

# an example with strings

my_ships <- c("Millenium Falcon", "X-wing", "Tie-Fighter", "Death Star")
stringr::str_detect(my_ships, pattern = "r")

phrase <- "I hate burritos!"

if (stringr::str_detect(phrase, "love")) {
  print("Big burrito fan")
}


# basic if-else statement

pika <- 59.1 # storing a value to an object

if (pika > 60) { # define size of mega pikas
  print("mega pika")
} else { # otherwise, print normal
  print("normal pika")
}


# another example with strings

food <- "I love tacos!"

if (stringr::str_detect(food, pattern = "burritos")) {
  print("yay burritos!")
} else {
    print("what about burritos?")
}


# more options with if-else if-else statements

marmot <- 3.8

if (marmot < 0.5) { # defining small marmots
  print("small")
} else if (marmot >= 0.5 & marmot < 3) { # defining medium marmots
  print("medium")
} else { # everything else is a large marmot
  print("large")
}

# use the switch function to write complicated if else statements
species <- "mouse"

# all of this code is the same as several if else statements
switch(species,
       "cat" = print("meow"), # same as writing an if statement
       "dog" = print("woof"), # same as writing else if statement
       "mouse" = print("squeak") # same as last else if statement
)


# see next week dplyr::case_when() is very similar


# writing for loops

dog_names <- c("Teddy", "Khora", "Banjo", "Waffle")

# create example for one data element to put into for loop
# version with copy and pasting
print(paste("My dog's name is", dog_names[1]))
print(paste("My dog's name is", dog_names[2]))
print(paste("My dog's name is", dog_names[3]))
print(paste("My dog's name is", dog_names[4]))


# version with a variable i can update
pupster <- dog_names[1]

print(paste("My dog's name is", pupster))

# convert to a for loop
for (pupster in dog_names) {
  print(paste("My dog's name is", pupster))
}

# another for loop example

# data that I'm working with
mass <- seq(from = 0, to = 3, by = 0.5)

# practicing writing the body of the for loop
i <- mass[1]
i
new_val <- i + 2 # adding 2 to each value
print(new_val) # printing the new value

# write into a for loop
for (i in mass) {
  new_val <- i + 2 # adding 2 to each value
  print(new_val) # printing the new value
}

# practice same example with indexing
i <- 1
for (i in 1:length(mass)) { # 1:length(mass) gives us a vector that is as long as our sequence... "defining iterator using the length of vector
  new_val <- mass[i] + 2
  print(new_val)
}

# another vector with iterating by position (indexing)
tree_height <- c(1, 2, 6, 10)

for (i in 1:length(tree_height)) { # creates the vector that is as long as the original vector (tree_height)
  val <- tree_height[i] + tree_height[i + 1] # position + (position + next position)
  print(val)
}

# For loops with conditional statements

# create a vector of animals
animal <- c("cat", "dog", "dog", "zebra", "dog")

animal <- animal[i]

if (animal[i] == "dog") {
  print("I love dogs!")
} else {
  print("These are other animals")
}

for (i in 1:length(animal)) {
  if (animal[i] == "dog") {
    print("I love dogs!")
  } else {
    print("These are other animals")
  }
}


# another for loop example with conditionals

# animal species
species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")

# and their respective ages in human years
age_human <- c(3, 8, 4, 6, 12, 18)

# convert ages to animal years using the following
# 1 human year = 7 years in dog years
# 1 human year = 0.88 in elephant years
# 1 human year = 4.7 in goat years

# allocate space for our output
animal_ages <- vector(mode = "numeric", length = length(species))

for (i in 1:length(species)) {
  if(species[i] == "dog") {
    animal_age <- age_human[i] * 7
  } else if (species[i] == "elephant") {
    animal_age <- age_human[i] * 0.88
  } else if (species[i] == "goat") {
    animal_age <- age_human[i] *4.7
  }  
  animal_ages[i] <- animal_age # populate empty vector
}


# another example of storing an output

tigers <- c(29, 34, 82)
lions <- c(2, 18, 6)

big_cats <- vector(mode = "numeric", length = length(tigers))

for (i in 1:length(tigers)) {
  total_cats <- tigers[i] + lions[i]
  big_cats[i] <- total_cats
}

# OR

# Q SCI 454 work flow
for (i in 1:length(tigers)){
  big_cats[i] <- tigers[i] + lions[i]
}

