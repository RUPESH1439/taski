Rails.application.routes.draw do
  get 'pages/contact'
  get "about", to: "pages#about"
  get 'pages/home'
  resources :projects

  root 'pages#home'
end
