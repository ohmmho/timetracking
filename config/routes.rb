Rails.application.routes.draw do
  
  get '/' => 'site#home'
  get '/contact' => 'site#contact'
  resources :projects do
    resources :entries
  end
  
  
end

# get '/projects' => 'projects#index'
  # get '/projects/:id' => 'projects#show'
  # get '/project/:project_id/entries' => 'entries#index', as: 'project_entries' 
  # get '/project/:project_id/entries/new' => 'entries#new'
  # post'/project/:project_id/entries' => 'entries#create'
  
  #site -> controller
  #home -> action (methods in that Class, this method is called 'home')
  #to create the controller: rails g controller site