class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    # render text: params[:user]
    @user = User.create(params.require(:user).permit(:name))
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    # render text: params['id']
    @user = User.find_by_id(params['id'])
  end

  def update
    # render text: params
    @user = User.find(params['id'])
    @user.update_attributes(params.require(:user).permit(:name))
    #@user.update_attributes(params['id'])
    redirect_to users_path
  end

  def destroy
    # render text: params
    @user = User.find(params['id'])
    @user.destroy
    redirect_to users_path
  end
end
