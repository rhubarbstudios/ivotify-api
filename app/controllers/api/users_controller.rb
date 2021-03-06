class Api::UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:id] = user.id
      render json: user, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user, status: 200
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    User.find(params[:id]).destroy
    head 204
  end


private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

