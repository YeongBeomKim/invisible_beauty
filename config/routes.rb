Rails.application.routes.draw do
  devise_for :users
  root "home#index"
  resources :posts, only: [:create, :show, :index] do
    resources :metoos, only: [:create]
    post "echo", to: "echos#post_echo_toggle"
    post "comment_echo", to: "echos#comment_echo_toggle"
    
  end
  resources :missions, only: [:create]
  resources :echos, only: [:create]
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
