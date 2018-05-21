class SessionsController < ApplicationController
  def create
    session[:user] = User.from_auth(request.env['omniauth.auth'])
    redirect_to :root
  end
end
