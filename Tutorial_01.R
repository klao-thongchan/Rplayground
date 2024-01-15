# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2^5

# Modulo
28%%6

# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples

# Change my_numeric to be 42
my_numeric <- 42.5
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "some text"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- TRUE
my_logical <- FALSE

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")

# Complete the code for boolean_vector
boolean_vector <-c(TRUE,FALSE,TRUE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign to total_daily how much you won/lost on each day
total_daily <- roulette_vector + poker_vector

total_daily

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- sum(total_roulette,total_poker)

# Print out total_week
total_week

# Check if you realized higher total gains in poker than in roulette 
total_poker > total_roulette

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c(1,2,3)]

# Calculate the average of the elements in poker_start
mean(poker_start)

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]

poker_winning_days

# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]

roulette_winning_days