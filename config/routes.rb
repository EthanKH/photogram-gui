Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "home" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "details" })
  post("/create", { :controller => "users", :action => "create" })
  post("/update_user/:modify_username", { :controller => "users", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_photo", { :controller => "photos", :action => "details"})
  post("/add_photo", { :controller => "photos", :action => "create"})
  post("/update_photo/:modify_id", { :controller => "photos", :action => "update"})
  get("/delete_photo/:delete_id", { :controller => "photos", :action => "delete"})
  post("/add_comment/:path_photo", { :controller => "photos", :action => "comment"})

end
