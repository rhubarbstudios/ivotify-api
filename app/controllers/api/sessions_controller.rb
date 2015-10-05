class Api::SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by email: params[:email]
    if user && user.authenticate(params[:password])
    session[:id] = user.id
    render json: user, only: [:id, :email]

    else

    render json: {
      error: 'User is not authenticated',
      status: 400
    }, status: 400

    end
  end

  def destroy
    session[:id] = nil
    render json: nil, status: 200
  end

end

