Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.
  # resources :users

    get 'users', to: 'users#index'
    get 'users/:id', to: 'users#show'
    post 'users', to: 'users#create'
    get 'users/new', to: 'users#new'
    get 'users/:id/edit', to: 'users#edit'
    patch 'users/:id', to: 'users#update'
    put 'users/:id', to:'users#update'
    delete 'users/:id', to:'users#destroy'




    get 'users/:id/artworks', to: 'artworks#index'
    # get 'artworks', to: 'artworks#index'
    get 'artworks/:id', to: 'artworks#show'
    post 'artworks', to: 'artworks#create'
    get 'artworks/new', to: 'artworks#new'
    get 'artworks/:id/edit', to: 'artworks#edit'
    patch 'artworks/:id', to: 'artworks#update'
    put 'artworks/:id', to:'artworks#update'
    delete 'artworks/:id', to:'artworks#destroy'

    get 'artwork_shares', to: 'artwork_shares#index'
    post 'artwork_shares', to: 'artwork_shares#create'
    delete 'artwork_shares/:id', to:'artwork_shares#destroy'






end
