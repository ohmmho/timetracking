class SiteController < ApplicationController

  def home
    render 'home'
  end

  def contact
    render 'contact'
  end
  
  def projects
    render 'projects'
  end
  
end
