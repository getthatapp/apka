Rails.application.routes.draw do

	shallow do
    resources :boards
		resources :lists
    resources :tasks

	end

	root 'boards#index'
end
