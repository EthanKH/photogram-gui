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
    new_user = User.new
    new_user.username = params.fetch("query_username")
    # new_user.id = 
    new_user.save
    redirect_to("/users/" + new_user.username)
  end

  def update
    update_user = params.fetch("modify_username")
    matching_users = User.where({ :username => update_user })
    updated_user = matching_users.first
    input_user = params.fetch("update_user")

    updated_user.username = input_user
    updated_user.save
    redirect_to("/users/" + updated_user.username)
  end
end
