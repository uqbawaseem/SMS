Rails.application.routes.draw do
  devise_for :students
  root 'homes#index'
  devise_scope :student do  
    get '/students/sign_out' => 'devise/sessions#destroy'     
 end

end
