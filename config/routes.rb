Rails.application.routes.draw do
  root 'sessions#new', as: 'new_session'
  resources :users
  controller :sessions do
    get 'login' => :new, as: 'login'
    post 'login' => :create, as: 'login_p'
    delete 'logout' => :destroy, as: 'logout'
  end
  get '/friend_num' => 'friend_num#input', as: 'friend_num_inp'
  post '/result' => 'friend_num#result', as: 'friend_num'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
