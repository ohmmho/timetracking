Rails.application.routes.draw do
  
  get '/' => 'site#home'
  get '/contact' => 'site#contact'
  get '/projects' => 'projects#index'
  get '/projects/:id' => 'projects#show'
  get '/project/:project_id/entries' => 'entries#index'
  
  #site -> controller
  #home -> action (methods in that Class, this method is called 'home')
  #to create the controller: rails g controller site
end

