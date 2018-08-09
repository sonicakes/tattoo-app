Rails.application.routes.draw do
  resources :users
  resources :works
  resources :visits
  resources :bookings
  get '/draw' => 'pages#draw'

  root :to => 'pages#index'

  # Session controller routes
  # This action shows a page with both a login and signup form
  get '/login' => 'session#form_login_signup'

  # This action processes the form when someone clicks signup
  # If the signup process is successful, they will be logged in and redirected
  # to the home page (with a flash message, "thanks for joining").
  # If the signup process fails (e.g. they didn't enter a valid email) they will
  # be redirected back to the /login page, so they can complete the signup form
  # again.
  post '/signup' => 'session#process_signup'

  # This action processes the form when someone clicks login
  # If the login process is successful, the will be logged in and redirected
  # to the home page (with a flash message, "welcome back").
  # If the login process fails (e.g. they entered the wrong password) they will
  # be redirected back to the /login page, so they can try again.
  post '/login' => 'session#process_login'

  # This action processes the users logout request. It will destroy the Session
  # object, then redirect to the home page.
  get '/logout' => 'session#logout'

end
