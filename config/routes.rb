Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :mobiles
    resources :delars
    root to: "users#index"
  end
  get 'mobile/:mobile_id/:mobile_name' => 'visitors#mobile_show', :as => :view_mobile
  get 'send_sms' => 'visitors#send_sms'
  root to: 'visitors#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
end
