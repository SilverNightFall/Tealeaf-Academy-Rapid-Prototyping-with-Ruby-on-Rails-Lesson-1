PostitTemplate::Application.routes.draw do
  root to: 'posts#index'

  resources :posts do
    resources :comments, except: [:show]
  end
end
