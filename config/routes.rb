Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Users

  devise_scope :user do
    get '/logout', to: 'users/sessions#destroy', as: :logout
  end
  devise_for :users, :controllers => {

    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
  }
  root 'works#index'
  resources :work_genres, only: [:show]
  patch 'work/:id/update' => 'works#hide_show_update' , as: 'hide_show_update'
  resources :works, only: [:new, :create, :show, :edit, :update, :destroy] do
  	get 'work/:id/confirm' => 'works#confirm' ,as: 'confirm'
    resources :work_items, only: [:create, :update, :destroy]
  	resources :comment_for_works, only: [:create, :destroy]
    get '/report/new' => 'report_works#new'
    resources :report_works, only: [:create]
    get '/reported' => 'report_works#thanks'
  end
  get 'users/search' => 'users#search' , as: 'search'
  resources :users, only: [:index, :show, :edit, :update]
  resources :contests, only: [:show]
  resources :contest_works, only: [:new, :create, :show, :edit, :update, :destroy] do
  	resources :contest_work_items, only: [:create, :update, :destroy]
  	resources :comment_for_contest_works, only: [:create, :destroy]
  	get '/report/new' => 'report_contest_works#new'
  	get '/reported' => 'report_contest_works#thanks'
  	resources :report_contest_works, only: [:create]
  end
  resources :users, only: [:show, :index, :edit]

#Admins
 devise_scope :admin do
    get '/admins/sign_out' => 'admins/sessions#destroy'
  end
 devise_for :admins, only: [:sign_in, :sign_out, :session] , :controllers => {
     :sessions => 'admins/sessions'
   }

# devise_for :admins
    get '/admins/' => 'admins/roots#top' , as: 'admins'

  namespace :admins do
  	resources :report_works , only: [:index, :show, :destroy]
    resources :report_contest_works, only: [:show, :destroy]
    get 'work_geres/new' => 'work_genres#new' , as: 'new_genres'
    resources :work_genres, only: [:index, :create, :show, :edit, :update, :destroy]
    resources :works, only: [:edit, :update, :show, :destroy] do
      resources :work_items, only: [:update, :destroy]
      resources :comment_for_works, only: [:destroy]
    end
    resources :contests, only: [:create, :show, :edit, :update, :destroy]
    resources :contest_works, only: [:edit, :update, :show, :destroy ] do
      resources :contest_work_items, only: [:destroy]
      resources :comment_for_contest_works, only: [:destroy]
    end
    get 'users/search' => 'users#search' , as: 'search'
    get 'users/result' => 'users#search_result'
    resources :users, only: [:index, :show, :edit, :update]
  end

end
