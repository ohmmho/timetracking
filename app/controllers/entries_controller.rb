class EntriesController < ApplicationController

  def index
    @project = Project.find params[:project_id]
    @entries = @project.entries
    @contar = @project.calculate_hours_month(2, 2015)
  end

  def new
    @project = Project.find params[:project_id]
    @entry = @project.entries.new
  end

  def create
    @project = Project.find params[:project_id] 
    @entry = @project.entries.new entry_params
    if @entry.save
      redirect_to action: 'index', controller: 'entries', project_id: @project.id
    else
      render 'new'
    end
  end

  def entry_params
    params.require(:entry).permit(:hours, :minutes, :datetime, :comments)
  end 

end
