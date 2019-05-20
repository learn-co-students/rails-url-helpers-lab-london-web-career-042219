Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  # get 'my_page_here ', :to => 'home#index', :as => :my_page
  get '/students/:id/activate', to: 'students#activate', as: :activate
end
