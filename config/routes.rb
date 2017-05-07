Rails.application.routes.draw do

  resources :boards do
		resources :lists, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  # resources :lists, only: [] do
  #   resources :tasks, only: [:new, :create, :show, :edit, :update, :destroy]
  # end

	root 'boards#index'
end
