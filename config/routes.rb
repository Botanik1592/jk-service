Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  root 'welcome#index'
  resources :documents, only: [:index]
  resource :feedbacks, only: [:show, :message]
  post 'feedbacks/message'
  get 'feedbacks/ok'
  get 'contacts/index'

end
