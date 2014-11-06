class UsersController < ApplicationController
	def new 
		@user = User.new
	end
	def show
		@user = User.find(params[:id])
	end
		
	def index
		@users = User.all
		@users.each do |user|
			user.password = 123
			user.remember_token = SecureRandom.urlsafe_base64 
		end
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
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

	 	respond_to do |format|
	      if @user.update_attributes(params[:user])
	        format.html { redirect_to @user, notice: 'User was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @user.errors, status: :unprocessable_entity }
	      end
	    end
		#if @user.update_attributes(params[:user])
		#	sign_in @user
		#	redirect_to @user
		#else
		#	render 'edit'
		#end
	end
end
