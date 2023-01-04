Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  end
  devise_for :users, path: 'auth', path_names: { sign_in: 'login',
          sign_out: 'logout', password: 'secret', confirmation: 'verification',
          unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in'
        }
  # Defines the root path route ("/")
  # root "articles#index"
end
