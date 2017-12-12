Rails.application.routes.draw do


  resources :exams do
    resources :notes
  end

  resources :courses do
    resources :students
  end
  
  resources :courses do
    resources :exams
  end
  
  get 'home/index'

  devise_for :users
  
  root to: "home#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
