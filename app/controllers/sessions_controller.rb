class SessionsController < ApplicationController
  def new
  end

  def create
	user = User.find_by(name: params[:name])
	if user && user.authenticate(params[:password])
		session[:user_id] = user.id
		if user.login == 'God'
		  redirect_to admin_url
		else
		  redirect_to scrubs_url
		end
	else
		redirect_to login_url, alert: "Invalid user/password combinations"
	end	
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "You logged out."
  end
end
