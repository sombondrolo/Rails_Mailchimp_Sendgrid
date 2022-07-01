Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root to: redirect('about')
  # get "/", to: redirect("public/about")
  root to: 'visitors#new'
  # post 'contact', to: 'contacts#process_form'
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
end
