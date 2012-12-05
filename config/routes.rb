
Rr::Application.routes.draw do
  resources :authors

root to: 'articles#index'
 get "tags/index"

  get "tags/show"
  get "articles/about_us"
  get "articles/contact_us"
  get "articles/blogger_information"
  get "articles/me_us"
  
  match 'login'  => 'author_sessions#new',     as: :login
  match 'logout' => 'author_sessions#destroy', as: :logout

  resources :author_sessions


  resources :comments
    resources :articles

    resources :tags




end
