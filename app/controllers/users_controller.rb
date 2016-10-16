class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    # render text: params[:user]
    @user = User.create( params.require(:user).permit(:name) )
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def edit
    render text: params['id']
    @user = User.find_by_id(params['id'])
    @user.save
    # render text: @edit
  end
end
