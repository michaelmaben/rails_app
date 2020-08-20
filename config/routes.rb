Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :songs, :articles, :policy_generator, :policy_creator, :policy_estimator
end
