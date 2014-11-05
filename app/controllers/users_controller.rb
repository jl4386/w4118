class UsersController < ApplicationController
	def new 
		@user = User.new
	end
	def show
		@user = User.find(params[:id])
	end
		
	def create
		@user=User.new(params[:user])
		if @user.save
			sign_in @user
			redirect_to @user
		else
			render 'new'
		end
		
	end
	def destroy
		User.find(params[:id]).destroy
	end
	
	def edit 
	end

	def update
		if@user.update_attributes(params[:user])
			sign_in @user
			redirect_to @user
		else
			render 'edit'
		end
	end
end
