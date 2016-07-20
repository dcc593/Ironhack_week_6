class UsersController < ApplicationController

before_action :authenticate_user!, only: :show 
	def show
		@user = User.find(params[:id])
		# line 5 is not really neeed cuz current_user is being used
		# and that is created somewhere else
		
	end
end
