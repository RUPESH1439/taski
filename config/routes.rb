Rails.application.routes.draw do
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  get 'pages/contact'
  get "about", to: "pages#about"
  get 'pages/home'
  get "error", to: "pages#error"

  get "blog", to: redirect('https://www.linkedin.com/in/sthrupesh/')

  resources :projects

  root 'pages#home'

  get "*path", to: redirect("/error")
end
