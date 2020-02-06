Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {:registrations => "users/registrations"}
  resources :registration_steps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index' 
  get 'about', to: 'pages#about'
  get 'team', to: 'pages#team'
  get 'faqs', to: 'pages#faqs'
  get 'faqspractitioners', to: 'pages#faqspractitioners'
  get 'faqsusers', to: 'pages#faqsusers'
  get 'login', to: 'pages#login'
  get 'signup', to: 'pages#signup'
  get 'search', to: 'pages#search'
 


  devise_scope :user do 
    resources :registrations do
      
      member do
    
        delete :delete_image_attachment
        
        end
    
    end
  end
  
end

