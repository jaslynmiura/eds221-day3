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