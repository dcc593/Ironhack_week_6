class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all

		render 'index'
	end

	def show
		#here we create a variable that stores the ID of the sandwich to be displayed
		#we retrieve this ID from the URL, each URL has a different id in it
		sandwichID = params[:id]
		# here we create a Global varialbe @sandwich, which stores
		#   the whole object sandwich.
		#   the method .find() goes in the database and fetches an object with an ID of sandwichID
		@sandwich = Sandwich.find(sandwichID)
		#here we pull down the ingredients linked to the sandwich
		#but how? well by accessing the middle table automatically and
		#figuring out what kind of ingredient belongs to the 
		#sandwich with the ID of sandwichID
		@ingredients = @sandwich.ingredients

		@allIngredients = Ingredient.all

		#and here we render the html page, remember that the page
		# can access data stored in @sandwich and @ingredients
		render 'show'

	end

end
