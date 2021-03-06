stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Add "Edinburgh Waverley" to the end of the array

stops.push("Edinburgh Waverley")

# Add "Glasgow Queen St" to the start of the array

stops.unshift("Glasgow Queen St")

# Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")

stops[4,0] = "Polmont"
p stops

# Work out the index position of "Linlithgow"

p stops.index("Linlithgow")

# Remove "Livingston" from the array using its name

stops.delete("Livingston")
p stops

# Delete "Cumbernauld" from the array by index
stops.delete_at(2)
p stops

# How many stops there are in the array?

p stops.count

# How many ways can we return "Falkirk High" from the array?

p stops[2]
p stops[-5]

# Reverse the positions of the stops in the array

p stops.reverse

# Print out all the stops using a for loop

for num in stops
  p num
end

# B
users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Get Jonathan's Twitter handle (i.e. the string "jonnyt")

p users["Jonathan"][:twitter]

# Get Erik's hometown

p users["Erik"][:home_town]

# Get the array of Erik's lottery numbers

p users["Erik"][:lottery_numbers]

# Get the type of Avril's pet Monty

p users["Avril"][:pets][0][:species]

# Get the smallest of Erik's lottery numbers

p users["Erik"][:lottery_numbers].min

# Return an array of Avril's lottery numbers that are even

users["Avril"][:lottery_numbers].each do |x|
  if x % 2 == 0
    p x
  end
end

# Erik is one lottery number short! Add the number 7 to be included in his lottery numbers

  p users["Erik"][:lottery_numbers].push(7)\

  # Change Erik's hometown to Edinburgh
  p users["Erik"][:home_town] = "Edinburgh"

# Add a pet dog to Erik called "Fluffy"

p users["Erik"][:pets].push(name: "Fluffy", species: "Dog")

# Add another person to the users hash


# include Comparable

# C.

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Change the capital of Wales from "Swansea" to "Cardiff".

united_kingdom[1][:capital] = "Swansea"
p united_kingdom

# Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).


# Use a loop to print the names of all the countries in the UK.

def print_name_of_country(array)
  for name in array
    p (name[:name])
    end
end

print_name_of_country(united_kingdom)

# Use a loop to find the total population of the UK.

def count_population(array)
  population = 0

  for total in array
    population += total[:population]
  end

  return "Total Population " + population.to_s
end

p count_population(united_kingdom)
