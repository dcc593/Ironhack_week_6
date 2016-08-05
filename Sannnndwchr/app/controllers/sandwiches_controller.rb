class SandwichesController < ApplicationController

	
	def index
	sandwiches = Sandwich.all
	render json: sandwiches
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"}, status: 404
			return
		end
		ingredients = sandwich.ingredients.all
		sandwichObj = {}
		sandwichObj["sandwich"] = sandwich
		sandwichObj["ingredients"] = ingredients
		render json: sandwichObj
	end


	def create
	sandwich = Sandwich.create(sandwich_params);
	render json: sandwich
	end

	def createIngredient
		sandwich = Sandwich.find_by(id: params[:id])
		ingredient  = Ingredient.find_by(name: params[:name])

		if (ingredient != nil) 
			sandwich.ingredients.push(ingredient)
		end

		render json: ingredient
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
 	unless sandwich
		render json: {error: "sadwich not found"}, status:404
		return
	end

	private

		def sandwich_params
	params_require(:sandwich).permit(:name, :bread_type)
			return
	end
	sandwich.update(sandwich_params)
	reder json:sandwich
	end

end