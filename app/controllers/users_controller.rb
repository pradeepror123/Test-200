class UsersController < ApplicationController
  def welcome
  end

  def list_users
    @users = User.all
  end
end
