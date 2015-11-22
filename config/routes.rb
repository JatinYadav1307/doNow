Rails.application.routes.draw do
  resources :notes
  resources :todos
  resources :habits
  resources :tags
  resources :tags
  resources :trials
  get "records", :to => 'records#index'
  put "records", :to => 'records#update'
  patch "records", :to => 'records#update'
  devise_for :users

  namespace :auth do # API Login
    devise_scope :user do
      post "/sign_in", :to => 'sessions#create'
      post "/sign_up", :to => 'registrations#create'
      delete "/sign_out", :to => 'sessions#destroy'
    end
  end
  # root path
  root 'static_pages#home'
end
