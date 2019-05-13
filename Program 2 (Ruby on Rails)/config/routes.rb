Rails.application.routes.draw do

  get 'adminprofile/showadmin'
  resources :recompanies
  devise_for :admins, :controllers => {
      :registrations => "admins/registrations",
      :sessions => "admins/sessions",
      :passwords => "admins/passwords",
      :confirmations => "admins/confirmations",
  }

  devise_scope :admin do
    get 'sign_up', to: 'admins/registrations#new'
    get 'sign_in' , to: 'admins/sessions#new'
    delete 'sign_out', to: 'admins/sessions#destroy'
    resources :admins
  end

  #get 'realtorprofile/houses'

  resources :househunterprofile
  get '/showprofile' => "househunterprofile#showprofile", as: :house_hunter_root
  resources :inquiries
  devise_for :house_hunters,  controllers: {sessions: 'house_hunters/sessions'}

  resources :house_hunters
  devise_for :realtors
  resources :houses
   # get '/houses' => "house#index", as: :realtor_root
  # get '/realtorprofile/:current_realtor_id' => "realtorprofile#show", as: :realtor_root
  get '/houses' => "houses#index", as: :realtor_root
  #get '/houses' => "houses#index", as: :house_hunter_root
  #get '/index' => '/app/views/'
  resources :realtorprofile

  get '/admins' => "admins#index"


  root :to => redirect('/homepage.html')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/listinquiries' => "inquiries#listinquiries"
end
