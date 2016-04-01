class UsersController < ApplicationController
	before_action :authenticate_user!, only: :secure
	before_action :set_user, only: :show


	def index
		@users = User.all

		if current_user
			puts "I'm logged in as #{current_user.email}"
		else
			puts "I'm not logged in"
		end

	end

	def show
		@tweets = @user.tweets
	end

	private

	def set_user
		@user = User.find(params[:id])
	end
end
