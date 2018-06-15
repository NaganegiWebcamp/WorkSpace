Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Users
  devise_for :users
  root 'works#index'
  resources :work_genres, only: [:show]
  patch 'work/:id/update' => 'works#hide_show_update' , as: 'hide_show_update'
  resources :works, only: [:create, :show, :edit, :update, :destroy] do
  	resource :work_items, only: [:create, :update, :destroy]
  	resource :comment_for_works, only: [:create, :update, :destroy]
    get '/report/new' => 'report_works#new'
    resource :report_works, only: [:create]
    get '/reported' => 'report_works#thanks'
  end
  resources :users, only: [:index, :show, :edit, :update]
  get 'users/search' => 'users#search_result'
  resources :contests, only: [:index, :show]
  resources :contest_works, only: [:create, :show, :edit, :update, :destroy] do
  	resource :contest_work_items, only: [:create, :update, :destroy]
  	resource :comment_for_contest_works, only: [:create, :update, :destroy]
  	get '/report/new' => 'report_contest_works#new'
  	resource :report_contest_works, only: [:create]
  	get '/reported' => 'report_contest_works#thanks'
  	resource :report_contest_works, only: [:create]
  end
  resources :users, only: [:show, :index, :edit]

#Admins
  devise_for :admins
  namespace :admins do
  	get '/' => 'roots#top'
  	resources :report_works , only: [:index]
    resources :contests, only: [:index, :show]
    resources :contest_works, only: [:index, :show]
    resources :work_genres, only: [:index, :show]
    resources :works, only: [:index, :show]
    resources :users, only: [:index]
    get 'users/result' => 'users#search_result'
    resources :report_works, only: [:index, :show]
  end

end
