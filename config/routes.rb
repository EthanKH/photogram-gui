Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "home" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "details" })
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_photo", { :controller => "photos", :action => "details"})
end
