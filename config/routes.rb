Rails.application.routes.draw do
  root "posts#index"
  resources :posts

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get 'tasks/run_sample_data', to: 'tasks#run_sample_data'
  get("/rake_tasks", { :controller => "rake_tasks", :action => "show" })
  get("/run_task", { :controller => "rake_tasks", :action => "run_task" })
  
end
