Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :relays, :only => [:create, :show, :index]

  devise_for :users, :controllers => { registrations: 'registrations' }
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/more/:id' => 'cart#add'
  get '/cart/less/:id' => 'cart#substract'

  resources :products
  #root 'page#home'
  root 'products#index'

  # Original: get 'page/about'
  get 'about', to: "page#about"

  # Original: get 'page/faqs'
  get 'faqs', to: "page#faqs"

  # Original: get 'page/contact'
  get 'contact', to: "page#contact"

  # Original: get 'page/now'
  get 'now', to: "page#now"

  # To see a CSS example & test HCO External Style Sheet customization
  get 'css_file', to: "page#css_file"
  # get 'css_file', to: "stylesheets#custom-hco-style.css"

  # To see a CSS example & test HCO External Style Sheet customization
  get 'pnb', to: "page#pnb"

  # To see the whole site within an iFrame
  get 'page/iframe'

  resources :products
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
  #     #   end
end
