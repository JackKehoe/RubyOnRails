class SessionsController < ApplicationController
  def new
  
  end

  def create
	user = User.find_by_username(params[:username])
	if user && user.authenticate(params[:password])
			session[:user_id] = user.id                 #stores the id in the session
			redirect_to session[:return_to] || root_path                            #displays the user/show view
		else
			flash.now[:error] ="Invalid username/passworld combo"
			render 'new'								#shows the login page again
		    end
			
  end

  def destroy
	if signed_in?
		session[:user_id] = nil
	else
		flash[:notice] = "You need to login first"
	end
	redirect_to login_path
  end
end
