Rails.application.routes.draw do
  devise_for :users ,controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "users#show"

  resources :users do
    resources :exams
    resources :videos
    resources :mcqs
    resources :ebooks
  end
  
end
