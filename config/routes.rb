Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  post   'user_token'      => 'user_token#create'
  # route  post 'user_token' => 'user_token#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  

  # Content Resourse
  resources :contents

  # Project resources with nested contents 
  resources :projects do 
    resources :contents
  end





  # Landing page sign in page. 
  # root   '/users/signin' => 'user_token#create'
  
  # Login end point 
  post   '/users/signin'      => 'user_token#create'

  # Sign up endpoint
  post   '/users/signup'   => 'users#create'
  
  # Endpoint to list all users , disabled
  # get    '/users'          => 'users#index'

  # Endpoint to view detail of user, disabled for now
  # get    '/users/current'  => 'users#current'
 
  # User profile update endpoint, disabled for now
  # patch  '/user/:id'       => 'users#update'

  # User account deletion endpoint, disabled
  # delete '/user/:id'       => 'users#destroy'
  

 
  
end
