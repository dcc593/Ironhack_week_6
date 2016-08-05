Rails.application.routes.draw do
  # This route sends requests to our naked 
  # url to the home action in the users controller
  root to: 'users#home'

  # These routes will be for signup. 
  # The first renders a form in the browse,
  # the second will receive the form and 
  # create a user in our database using the 
  # data given to us by the user.
  get '/signup_or_login' => 'users#new'
  get '/users' => 'users#index'
  post '/users' => 'users#create'
  post '/login' => 'users#create_for_login'
  delete '/logout' => 'users#destroy_for_logout'

  get '/profile' => 'users#show'

end
