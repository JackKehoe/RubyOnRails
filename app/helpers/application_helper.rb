module ApplicationHelper

def signed_in?
	if session[:user_id].nil?
		return
	else
		@current_user = user/find_by_id(session[:user])
	end

	end

end
