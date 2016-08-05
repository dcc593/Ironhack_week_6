Rails.application.routes.draw do

  devise_for :users, path: '',
  	path_names: {sign_in:'',sign_up: ''}

  # devise_for :sign_in, path: '' 
	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	
	scope "/api" do
	  resources :ingredients
	  resources :sandwiches, except: [:new, :edit]
	  post '/sandwiches/:id/ingredients/add' => 'sandwiches#createIngredient'
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
