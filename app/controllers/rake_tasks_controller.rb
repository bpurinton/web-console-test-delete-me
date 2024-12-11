class RakeTasksController < ApplicationController
  # Basic HTTP Authentication
  http_basic_authenticate_with name: "admin", password: "secret"

  require "rake"
  Rails.application.load_tasks

  def show
    render({ :template => "rake_tasks/show" })
  end

  def run_task
    # Re-enable the task if it has already been executed
    Rake::Task["sample_data"].reenable
    
    # Run the rake task
    Rake::Task["sample_data"].invoke

    # Provide feedback to the user
    flash[:notice] = "Sample data task has been run."
    redirect_to("/rake_tasks")
  end
end
