class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_user_id(params[:session][:user_id])
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or user
		else
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end
