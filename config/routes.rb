Rails.application.routes.draw do

  resources :boards do
    resources :lists, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  resources :lists, only: [] do
    resources :tasks, only: [:new, :show, :create, :edit, :update, :destroy]
    resources :archive_tasks, only: [:update]
  end

  resources :registrations, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  root 'boards#index'
end
