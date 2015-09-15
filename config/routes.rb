Rails.application.routes.draw do

  get "/dropbox",  :controller => "dropbox", :action => "index"
  get "/dropbox/auth",  :controller => "dropbox", :action => "show"
  get "/dropbox/callback",  :controller => "dropbox", :action => "create"

  post "/dashboard/upload",  :controller => "dashboard", :action => "upload"
  root 'dashboard#show'
end
