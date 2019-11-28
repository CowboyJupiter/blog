Rails.application.routes.draw do
  get 'welcome/index'
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  resources :articles
  root 'welcome#index'
  get '/articles/:id(.:format)' => 'articles#show'
end
