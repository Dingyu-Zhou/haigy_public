Rails.application.routes.draw do

  resources :sessions, defaults: {format: :json}, only: [:create, :destroy]


  resources :users, defaults:{format: :json}, only: [:show] do
    collection do
      post :search
    end
  end


  resources :user_binded_accounts, defaults: {format: :json}, only: [:create]


  resources :carts, defaults: {format: :json}, only: [:update, :show]


  resources :cart_entries, defaults: {format: :json}, except: [:index, :new, :edit] do
    collection do
      post :synchronizeAll
    end
  end


  resources :brief_info_items, defaults: {format: :json}, only: [:show] do
    collection do
      get :browse
      get :search
      get :substitute
    end
  end


  resources :detailed_info_items, defaults: {format: :json}, only: [:show, :update]


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  get "main/index"
  root "main#index"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end