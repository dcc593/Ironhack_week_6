Rails.application.routes.draw do
  devise_for :users, path: '', 
  path_names: {sign_in: "login", sign_up: 'signup'}
  # , controllers: {sessions: 'users/sessions'} can be put to change the 
  # controllers name for the specified ones

  #remember that :users here is like a hash, so the path: and path_names: are keys
  # for the empty quotes its to take out the users from the url

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:id' => 'users#show'
end
