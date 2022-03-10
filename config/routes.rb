Rails.application.routes.draw do
  get 'replies/index'
  get 'replies/show'
  get 'replies/edit'
  get 'replies/new'
  root 'homes#index'
  devise_for :students, controllers: { registrations: 'students/registrations' }
  resources :students, :only => [:index]
  devise_scope :student do  
    get '/students/sign_out' => 'devise/sessions#destroy'     
 end
 resources :courses
 resources :registered_courses
 resources :questions
 resources :replies
end
