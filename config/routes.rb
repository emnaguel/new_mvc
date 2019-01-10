# frozen_string_literal: true

Rails.application.routes.draw do
  root 'administration/items#index'

  get '/home', to: 'home#landing_page'

  namespace 'administration' do
    get '/', to: 'items#index'

  resources :items, only: [:index, :show, :edit]
  patch  "items/:id",      to: "items#update", :as => 'update'
  end
end
