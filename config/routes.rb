Rails.application.routes.draw do
  root 'homes#index'
  devise_for :students
  resources :students, :only => [:index]
  devise_scope :student do  
    get '/students/sign_out' => 'devise/sessions#destroy'     
 end
 resources :courses

end
