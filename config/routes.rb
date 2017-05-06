Rails.application.routes.draw do

  resources :boards, only: [:index] do
		resources :lists, only: [:index]
  end

  # resources :tasks, only: [:index]

	root 'boards#index'
end
