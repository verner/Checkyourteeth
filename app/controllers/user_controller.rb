class UserController < ApplicationController
	def index
	end
	def create
		@user = User.new params[:user]
		if @user.save
			redirect_to user_index_path
		else
			redirect_to new_user_path
		end
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
		
			flash[:notice] = "User saved successfully"
		else
			flash[:alert] = "There was an error saving the user"
		end
		redirect_to edit_user_path(params[:id])
	end
	def destroy
	end
	def sign_in
	end
	def sign_out
	end

end

	