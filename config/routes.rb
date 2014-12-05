Rails.application.routes.draw do
  devise_for :users
  root 'jobapps#index'

  # Routes for the Action resource:
  # CREATE
  get('/actions/new', { :controller => 'actions', :action => 'new' })
  get('/create_action', { :controller => 'actions', :action => 'create' })

  # READ
  get('/actions', { :controller => 'actions', :action => 'index' })
  get('/actions/:id', { :controller => 'actions', :action => 'show' })

  # UPDATE
  get('/actions/:id/edit', { :controller => 'actions', :action => 'edit' })
  get('/update_action/:id', { :controller => 'actions', :action => 'update' })

  # DELETE
  get('/delete_action/:id', { :controller => 'actions', :action => 'destroy' })
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get('/companies/new', { :controller => 'companies', :action => 'new' })
  get('/create_company', { :controller => 'companies', :action => 'create' })

  # READ
  get('/companies', { :controller => 'companies', :action => 'index' })
  get('/companies/:id', { :controller => 'companies', :action => 'show' })

  # UPDATE
  get('/companies/:id/edit', { :controller => 'companies', :action => 'edit' })
  get('/update_company/:id', { :controller => 'companies', :action => 'update' })

  # DELETE
  get('/delete_company/:id', { :controller => 'companies', :action => 'destroy' })
  #------------------------------

  # Routes for the Todo resource:
  # CREATE
  get('/todos/new', { :controller => 'todos', :action => 'new' })
  get('/create_todo', { :controller => 'todos', :action => 'create' })

  # READ
  get('/todos', { :controller => 'todos', :action => 'index' })
  get('/todos/:id', { :controller => 'todos', :action => 'show' })

  # UPDATE
  get('/todos/:id/edit', { :controller => 'todos', :action => 'edit' })
  get('/update_todo/:id', { :controller => 'todos', :action => 'update' })

  # DELETE
  get('/delete_todo/:id', { :controller => 'todos', :action => 'destroy' })
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get('/contacts/new', { :controller => 'contacts', :action => 'new' })
  get('/create_contact', { :controller => 'contacts', :action => 'create' })

  # READ
  get('/contacts', { :controller => 'contacts', :action => 'index' })
  get('/contacts/:id', { :controller => 'contacts', :action => 'show' })

  # UPDATE
  get('/contacts/:id/edit', { :controller => 'contacts', :action => 'edit' })
  get('/update_contact/:id', { :controller => 'contacts', :action => 'update' })

  # DELETE
  get('/delete_contact/:id', { :controller => 'contacts', :action => 'destroy' })
  #------------------------------

  # Routes for the Jobapp resource:
  # CREATE
  get('/jobapps/new', { :controller => 'jobapps', :action => 'new' })
  get('/create_jobapp', { :controller => 'jobapps', :action => 'create' })

  # READ
  get('/jobapps', { :controller => 'jobapps', :action => 'index' })
  get('/jobapps/:id', { :controller => 'jobapps', :action => 'show' })

  # UPDATE
  get('/jobapps/:id/edit', { :controller => 'jobapps', :action => 'edit' })
  get('/update_jobapp/:id', { :controller => 'jobapps', :action => 'update' })

  # DELETE
  get('/delete_jobapp/:id', { :controller => 'jobapps', :action => 'destroy' })
  #------------------------------

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
  #     resources :products
  #   end
end
