Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'courses#index'
    get 'courses/new', to: 'courses#new'
    get 'about', to: 'pages#about'
    resources :users, except: [:destroy, :index]
    get 'signup', to: 'users#new'
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    post 'course_enroll', to: 'user_courses#create'
end


