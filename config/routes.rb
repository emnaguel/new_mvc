# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins, path: 'admins'
  devise_for :users, path: 'users'

  root 'administration/items#index'

  get '/home', to: 'home#landing_page'

  namespace 'administration' do
    get '/', to: 'items#index'

    resources :items # only: [:index, :show, :edit]
    # patch  "items/:id",      to: "items#update", :as => 'update'
  end
end
