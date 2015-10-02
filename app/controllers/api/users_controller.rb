class Api::UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:id] = user.id
      redirect_to '/'
    else
      flash[:error] = "Oops, try again!"

      # Need to add path once view is created
      redirect_to '/'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    # Need to add path once view is created
    redirect_to '/'
  end


private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

