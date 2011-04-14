ActionController::Routing::Routes.draw do |map|
  map.resources :sessions
  map.resources :products
  map.rg 'rg', :controller => 'rg', :action => 'index'        
  map.r 'r', :controller => 'r', :action => 'index'        
  map.ne 'ne', :controller => 'ne', :action => 'index'        
  map.e 'e', :controller => 'e', :action => 'index'        
  map.en 'en', :controller => 'en', :action => 'index'        
  map.re 're', :controller => 're', :action => 'index'        
  map.tu 'tu', :controller => 'tu', :action => 'index'        
  map.ct 'ct', :controller => 'ct', :action => 'index'        
  map.ec 'ec', :controller => 'ec', :action => 'index'        
  map.te 'te', :controller => 'te', :action => 'index'        
  map.i 'i', :controller => 'i', :action => 'index'        
  map.h 'h', :controller => 'h', :action => 'index'        
  map.a 'a', :controller => 'a', :action => 'index'        
  map.rc 'rc', :controller => 'rc', :action => 'index'      
  map.ar 'ar', :controller => 'ar', :action => 'index'      
  map.function 'function', :controller => 'function', :action => 'index'    
  map.directory 'directory', :controller => 'directory', :action => 'index'  
  map.login 'login', :controller => 'sessions', :action => 'new' 
  map.logout 'logout', :controller => 'sessions', :action => 'destroy'
  map.architecture 'architecture', :controller => 'architecture', :action => 'index'  
  map.value 'value', :controller => 'value', :action => 'index'
  map.place 'place', :controller => 'place', :action => 'index'  
  map.ecology 'ecology', :controller => 'ecology', :action => 'index'
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
