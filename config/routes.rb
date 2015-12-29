Rails.application.routes.draw do
  
  get 'low_stocks/ordered' => 'low_stocks#archived'
  
  get 'low_stocks/history' => 'low_stocks#history'
  
  resources :low_stocks do
    member do
      patch :complete
    end
  end
  
  devise_for :users
  
  get 'home/index' => 'home#index'
  
  get 'treatments/archived' => 'treatments#archived'
  
  resources :treatments do
    member do
      patch :complete
    end
  end
  
  get 'loans/archived' => 'loans#archived'
  
  get 'loans/stock' => 'loans#stock'
  
  resources :loans do
    member do
      patch :complete
    end
  end
  
  get 'parts/all' => 'parts#view', :as => :parts_all
  
  get 'orders/archived' => 'orders#archived'
  
  get 'orders/:printer/parts' => 'orders#printerparts', :as => :parts_by_printer
  
  get 'orders/new' => 'orders#new', :as => :a_new_order
  
  resources :orders do
    member do
      patch :complete
    end
    resources :parts
  end
  resources :parts
  
  get 'region-orders/:region' => 'orders#region', :as => :orders_by_region
  

  root 'home#index'

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
