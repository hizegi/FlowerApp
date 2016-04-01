class UsersController < ApplicationController
	before_action :authenticate_user!, only: :secure
	before_action :set_user, only: :show


	def index

		# begin
			# @app_url = "https://garden.vsapi01.com/api-search/by-url?url=" + params[:pic_url] + "&apikey=dae3d11e-30e7-4d1f-a153-1129af40a629"

		# 	data = HTTParty.get("https://garden.vsapi01.com/api-search/by-url?url=" + params[:pics].to_s + "&apikey=dae3d11e-30e7-4d1f-a153-1129af40a629")

		# 	puts "===================="
		# 	puts data
		# 	puts params[:pics]
		# 	puts params[:pics].to_s
		# 	puts "===================="


		# end

		@users = User.all
		@flowers = Flower.all

		if current_user
			puts "I'm logged in as #{current_user.email}"
		else
			puts "I'm not logged in"
		end

	end

	def create
	 #    puts "Dem params"
		# puts params
		redirect to: '/users'
	end

	def show
		@flowers = @user.flowers
	end

	private

	def set_user
		@user = User.find(params[:id])
	end
end
