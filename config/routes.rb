Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :pastes
  get 'welcome', to:'welcome#index' 
  get '/', to:'pastes#new'
  
  #Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
