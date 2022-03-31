Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'pages/contact'
  get "about", to: "pages#about"
  get 'pages/home'
  get "error", to: "pages#error"

  get "blog", to: redirect('https://www.linkedin.com/in/sthrupesh/')

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end

  root 'pages#home'

  # get "*path", to: redirect("/error")
end
