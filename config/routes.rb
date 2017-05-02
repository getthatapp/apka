Rails.application.routes.draw do
	resources :boards do
		resources :lists, only: [:new, :create]
	end

	root 'boards#index'
end
