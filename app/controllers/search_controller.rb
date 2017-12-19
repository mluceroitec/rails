class SearchController < ApplicationController
	def index
		nombre = params[:keyword]

        @user = User.find_by(name: nombre)
      	if @user
	        @images = Image.where user_id: @user.id

      	else
      		@user=nil
      	end

	end
end
