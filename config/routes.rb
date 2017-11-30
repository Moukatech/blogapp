Rails.application.routes.draw do
  devise_for :users
  
  resources :articles do
   resources :comments
  end
  #root  'new_user_session_path'

 root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 # devise_scope :user do
 #    get '/users/sign_out' => 'devise/sessions#destroy'
 #  end

#  devise_scope :user do
#   get 'login', to: 'devise/sessions#new'
# end

# devise_scope :user do
#   delete 'logout', to: 'devise/sessions#destroy'
# end

# devise_for :users, skip: [:sessions]
# as :user do
#   get 'signin', to: 'devise/sessions#new', as: :new_user_session
#   post 'signin', to: 'devise/sessions#create', as: :user_session
#   delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
# end

end
