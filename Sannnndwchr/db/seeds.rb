# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "-----SEEDING DB-----"

sandwichA = Sandwich.create(name: "Bacon Egg Cheese" ,bread_type: "Bagel")
sandwichB = Sandwich.create(name: "meatball sub", bread_type: "italian")
sandwichC = Sandwich.create(name: "Chicken sub" ,bread_type: "wheat")

ingredientA = Ingredient.create(name: "egg", calories: 100)
ingredientB =	Ingredient.create(name: "bacon", calories: 130)
ingredientC =	Ingredient.create(name: "meatballs", calories: 150)
ingredientD = Ingredient.create(name: "chicken", calories: 120)

sandwich_ingredientA = SandwichIngredient.create(sandwich_id: sandwichA.id , ingredient_id: ingredientA.id)
sandwich_ingredientB = SandwichIngredient.create(sandwich_id: sandwichA.id , ingredient_id: ingredientB.id)
sandwich_ingredientC = SandwichIngredient.create(sandwich_id: sandwichB.id , ingredient_id: ingredientC.id)
sandwich_ingredientD = SandwichIngredient.create(sandwich_id: sandwichC.id , ingredient_id: ingredientD.id)

puts "-----FINISHED SEEDING DB-----"