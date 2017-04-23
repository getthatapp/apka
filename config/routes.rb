Rails.application.routes.draw do
	resources :boards, only: [:show] do
		resources :lists, only: [:new, :create]
	end
end
