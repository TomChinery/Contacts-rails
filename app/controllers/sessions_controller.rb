class SessionsController < ApplicationController
  def create
    user = User.create_from_omniauth(user_params)
    session[:user_id] = user.id
    redirect_to root_path
  end

  def delete
    

  end

  private

  def user_params
    params[:auth] = env["omniauth.auth"]
    params.require(:auth).permit!
  end

end
