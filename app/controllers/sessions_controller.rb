class SessionsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  end
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Vous êtes connecté(e)."
    else
      flash.now[:alert] = "Votre adresse mail ou votre mot de passe est incorrect"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Vous êtes déconnecté(e)"
  end
end