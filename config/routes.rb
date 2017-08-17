Rails.application.routes.draw do
    root "photos#index"
  
  # Routes for the Job_type_match resource:
  # CREATE
  get "/job_type_matches/new", :controller => "job_type_matches", :action => "new"
  post "/create_job_type_match", :controller => "job_type_matches", :action => "create"

  # READ
  get "/job_type_matches", :controller => "job_type_matches", :action => "index"
  get "/job_type_matches/:id", :controller => "job_type_matches", :action => "show"

  # UPDATE
  get "/job_type_matches/:id/edit", :controller => "job_type_matches", :action => "edit"
  post "/update_job_type_match/:id", :controller => "job_type_matches", :action => "update"

  # DELETE
  get "/delete_job_type_match/:id", :controller => "job_type_matches", :action => "destroy"
  #------------------------------

  # Routes for the Industry_preference resource:
  # CREATE
  get "/industry_preferences/new", :controller => "industry_preferences", :action => "new"
  post "/create_industry_preference", :controller => "industry_preferences", :action => "create"

  # READ
  get "/industry_preferences", :controller => "industry_preferences", :action => "index"
  get "/industry_preferences/:id", :controller => "industry_preferences", :action => "show"

  # UPDATE
  get "/industry_preferences/:id/edit", :controller => "industry_preferences", :action => "edit"
  post "/update_industry_preference/:id", :controller => "industry_preferences", :action => "update"

  # DELETE
  get "/delete_industry_preference/:id", :controller => "industry_preferences", :action => "destroy"
  #------------------------------

  # Routes for the Feature resource:
  # CREATE
  get "/features/new", :controller => "features", :action => "new"
  post "/create_feature", :controller => "features", :action => "create"

  # READ
  get "/features", :controller => "features", :action => "index"
  get "/features/:id", :controller => "features", :action => "show"

  # UPDATE
  get "/features/:id/edit", :controller => "features", :action => "edit"
  post "/update_feature/:id", :controller => "features", :action => "update"

  # DELETE
  get "/delete_feature/:id", :controller => "features", :action => "destroy"
  #------------------------------

  # Routes for the Preference resource:
  # CREATE
  get "/preferences/new", :controller => "preferences", :action => "new"
  post "/create_preference", :controller => "preferences", :action => "create"

  # READ
  get "/preferences", :controller => "preferences", :action => "index"
  get "/preferences/:id", :controller => "preferences", :action => "show"

  # UPDATE
  get "/preferences/:id/edit", :controller => "preferences", :action => "edit"
  post "/update_preference/:id", :controller => "preferences", :action => "update"

  # DELETE
  get "/delete_preference/:id", :controller => "preferences", :action => "destroy"
  #------------------------------

  # Routes for the Attribute resource:
  # CREATE
  get "/attributes/new", :controller => "attributes", :action => "new"
  post "/create_attribute", :controller => "attributes", :action => "create"

  # READ
  get "/attributes", :controller => "attributes", :action => "index"
  get "/attributes/:id", :controller => "attributes", :action => "show"

  # UPDATE
  get "/attributes/:id/edit", :controller => "attributes", :action => "edit"
  post "/update_attribute/:id", :controller => "attributes", :action => "update"

  # DELETE
  get "/delete_attribute/:id", :controller => "attributes", :action => "destroy"
  #------------------------------

  # Routes for the Application resource:
  # CREATE
  get "/applications/new", :controller => "applications", :action => "new"
  post "/create_application", :controller => "applications", :action => "create"

  # READ
  get "/applications", :controller => "applications", :action => "index"
  get "/applications/:id", :controller => "applications", :action => "show"

  # UPDATE
  get "/applications/:id/edit", :controller => "applications", :action => "edit"
  post "/update_application/:id", :controller => "applications", :action => "update"

  # DELETE
  get "/delete_application/:id", :controller => "applications", :action => "destroy"
  #------------------------------

  # Routes for the Invite resource:
  # CREATE
  get "/invites/new", :controller => "invites", :action => "new"
  post "/create_invite", :controller => "invites", :action => "create"

  # READ
  get "/invites", :controller => "invites", :action => "index"
  get "/invites/:id", :controller => "invites", :action => "show"

  # UPDATE
  get "/invites/:id/edit", :controller => "invites", :action => "edit"
  post "/update_invite/:id", :controller => "invites", :action => "update"

  # DELETE
  get "/delete_invite/:id", :controller => "invites", :action => "destroy"
  #------------------------------

  # Routes for the Requirement resource:
  # CREATE
  get "/requirements/new", :controller => "requirements", :action => "new"
  post "/create_requirement", :controller => "requirements", :action => "create"

  # READ
  get "/requirements", :controller => "requirements", :action => "index"
  get "/requirements/:id", :controller => "requirements", :action => "show"

  # UPDATE
  get "/requirements/:id/edit", :controller => "requirements", :action => "edit"
  post "/update_requirement/:id", :controller => "requirements", :action => "update"

  # DELETE
  get "/delete_requirement/:id", :controller => "requirements", :action => "destroy"
  #------------------------------

  # Routes for the Superpower resource:
  # CREATE
  get "/superpowers/new", :controller => "superpowers", :action => "new"
  post "/create_superpower", :controller => "superpowers", :action => "create"

  # READ
  get "/superpowers", :controller => "superpowers", :action => "index"
  get "/superpowers/:id", :controller => "superpowers", :action => "show"

  # UPDATE
  get "/superpowers/:id/edit", :controller => "superpowers", :action => "edit"
  post "/update_superpower/:id", :controller => "superpowers", :action => "update"

  # DELETE
  get "/delete_superpower/:id", :controller => "superpowers", :action => "destroy"
  #------------------------------

  # Routes for the Skill resource:
  # CREATE
  get "/skills/new", :controller => "skills", :action => "new"
  post "/create_skill", :controller => "skills", :action => "create"

  # READ
  get "/skills", :controller => "skills", :action => "index"
  get "/skills/:id", :controller => "skills", :action => "show"

  # UPDATE
  get "/skills/:id/edit", :controller => "skills", :action => "edit"
  post "/update_skill/:id", :controller => "skills", :action => "update"

  # DELETE
  get "/delete_skill/:id", :controller => "skills", :action => "destroy"
  #------------------------------

  # Routes for the Job_type resource:
  # CREATE
  get "/job_types/new", :controller => "job_types", :action => "new"
  post "/create_job_type", :controller => "job_types", :action => "create"

  # READ
  get "/job_types", :controller => "job_types", :action => "index"
  get "/job_types/:id", :controller => "job_types", :action => "show"

  # UPDATE
  get "/job_types/:id/edit", :controller => "job_types", :action => "edit"
  post "/update_job_type/:id", :controller => "job_types", :action => "update"

  # DELETE
  get "/delete_job_type/:id", :controller => "job_types", :action => "destroy"
  #------------------------------

  # Routes for the Job resource:
  # CREATE
  get "/jobs/new", :controller => "jobs", :action => "new"
  post "/create_job", :controller => "jobs", :action => "create"

  # READ
  get "/jobs", :controller => "jobs", :action => "index"
  get "/jobs/:id", :controller => "jobs", :action => "show"

  # UPDATE
  get "/jobs/:id/edit", :controller => "jobs", :action => "edit"
  post "/update_job/:id", :controller => "jobs", :action => "update"

  # DELETE
  get "/delete_job/:id", :controller => "jobs", :action => "destroy"
  #------------------------------

  devise_for :recruiters
  # Routes for the Industry resource:
  # CREATE
  get "/industries/new", :controller => "industries", :action => "new"
  post "/create_industry", :controller => "industries", :action => "create"

  # READ
  get "/industries", :controller => "industries", :action => "index"
  get "/industries/:id", :controller => "industries", :action => "show"

  # UPDATE
  get "/industries/:id/edit", :controller => "industries", :action => "edit"
  post "/update_industry/:id", :controller => "industries", :action => "update"

  # DELETE
  get "/delete_industry/:id", :controller => "industries", :action => "destroy"
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get "/companies/new", :controller => "companies", :action => "new"
  post "/create_company", :controller => "companies", :action => "create"

  # READ
  get "/companies", :controller => "companies", :action => "index"
  get "/companies/:id", :controller => "companies", :action => "show"

  # UPDATE
  get "/companies/:id/edit", :controller => "companies", :action => "edit"
  post "/update_company/:id", :controller => "companies", :action => "update"

  # DELETE
  get "/delete_company/:id", :controller => "companies", :action => "destroy"
  #------------------------------

  # Routes for the Match resource:
  # CREATE
  get "/matches/new", :controller => "matches", :action => "new"
  post "/create_match", :controller => "matches", :action => "create"

  # READ
  get "/matches", :controller => "matches", :action => "index"
  get "/matches/:id", :controller => "matches", :action => "show"

  # UPDATE
  get "/matches/:id/edit", :controller => "matches", :action => "edit"
  post "/update_match/:id", :controller => "matches", :action => "update"

  # DELETE
  get "/delete_match/:id", :controller => "matches", :action => "destroy"
  #------------------------------

  devise_for :candidates
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
