Rails.application.routes.draw do

  get "/dropbox",  :controller => "dropbox", :action => "index"
  get "/dropbox/auth",  :controller => "dropbox", :action => "show"
  get "/dropbox/callback",  :controller => "dropbox", :action => "create"

  get "/upload/show",  :controller => "upload", :action => "show"
  post "/upload/upload",  :controller => "upload", :action => "upload"

  root 'dashboard#show'
end
