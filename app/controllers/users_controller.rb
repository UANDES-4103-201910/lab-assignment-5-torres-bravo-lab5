class UsersController < ApplicationController
	def create
		@user = User.create(user_params)
		if @user.save
			redirect_to @user
			render json: @user
		else
			render json: @user
		end
	end

	def destroy
		User.find(params[:id]).destroy
		render json: @user
	end

	def update
		@user = User.update(user_params)
		if @user.save
			redirect_to @user
			render json: @user
		else
			render json: @user
		end
	end

	def index
	  @users = User.all
	  render json: @users
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	private 
	   def user_params 
	   	params.require(:user).permit(:name, :lastname, :email, :password, :address)
	   end

end
