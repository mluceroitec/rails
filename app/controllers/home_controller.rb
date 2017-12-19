class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		    @images = Image.order(id: :desc).where user_id: current_user.id
  	else
  		
        redirect_to new_user_session_path

  	end
    
  end
end
