Rails.application.routes.draw do
  resources :ingredients, only: [:create, :destroy, :show]
  resources :sandwhiches, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
