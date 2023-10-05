class UsersController < ApplicationController
  def home
    matching_users = User.all
    @users_list = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index" })
  end

  def index
    matching_users = User.all
    @users_list = matching_users.order({ :username => :asc })
    render({ :template => "user_templates/index" })
  end

  def details
    # parameters: {"path_username"=>"anisa"}
    url_username = params.fetch("path_username")
    matching_usernames = User.where({ :username => url_username })
    @the_user = matching_usernames.first
    # if @the_user == nil
    #   redirect_to("/404")
    # else
      render({ :template => "user_templates/details" })
    # end
  end

  def create
    
    # redirect_to("/users/" + new_id.to_s)
    render({ :template => "user_templates/create" })
  end
end
