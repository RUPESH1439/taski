Rails.application.routes.draw do
  get 'pages/contact'
  get "about", to: "pages#about"
  get 'pages/home'
  get "error", to: "pages#error"

  get "blog", to: redirect('https://www.linkedin.com/in/sthrupesh/')

  resources :projects

  root 'pages#home'

  get "*path", to: redirect("/error")
end
