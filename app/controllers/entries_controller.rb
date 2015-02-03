class EntriesController < ApplicationController

  def index
    @project = Project.find params[:project_id]
    @entries = @project.entries
    @contar = @project.calculate_hours_month(2, 2015)
  end

end
