Rails.application.routes.draw do
	resources :books
	resources :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html.
	post "/users/new" => "users#create"
	get "login" => "users#login_form"
	post "login" => "users#login"
	post "logout" => "users#logout"
	post "/users/:id/edit" => "users#update"
	get "/top" => "users#about_app"
	root to: "users#about_app"
end
