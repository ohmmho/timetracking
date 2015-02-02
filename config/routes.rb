Rails.application.routes.draw do
  
  get '/' => 'site#home'
  get '/contact' => 'site#contact'
  get '/projects' => 'projects#index'
  get '/projects/:id' => 'projects#show'
  
  #site -> controller
  #home -> action (methods in that Class, this method is called 'home')
  #to create the controller: rails g controller site
end

