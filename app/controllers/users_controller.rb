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
			redirect_to @user
		else
			render 'new'
		end
		
	end
	def destroy
		User.find(params[:id]).destroy
		flash[:success] = "User destroyed"
	end
	
	def edit 
	end

	def update
		if@user.update_attributes(params[:user])
			flahs[:success] = "Profile updated"
			redirect_to @user
		else
			render 'edit'
		end
	end
end
