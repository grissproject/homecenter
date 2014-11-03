class UserController < ApplicationController
  def index
    @users = User.find(:all)
  end

  def create
  end

  def activate
  end

  def deactivate
    @user = User.find(params[:format])
    @user.username = 'des__' + @user.username
    @user.save
    
    redirect_to user_index_path, notice: 'Usuario desactivado correctamente.'
  end

  def edit
  end
end
