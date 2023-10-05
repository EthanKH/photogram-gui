Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "details" })
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "details"})
end
