Rails.application.routes.draw do
  devise_for :students
  root 'homes#index'
  
end
