Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #Adding a custom route for comments
  resources :articles do 
    resources :comments
  end

  # Adding main entry point 
  root 'welcome#index'
end
