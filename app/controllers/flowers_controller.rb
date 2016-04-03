class FlowersController < ApplicationController

	before_action :set_flower, only: [:show, :edit, :update, :destroy]

	def index
		@flowers = Flower.all
	end

	def show
		@user = User.find(params[:user_id])

	end

	def new
		@flower = Flower.new
	end

	def edit

	end

	def create
		@flower = Flower.new(flower_params)
		@user = User.find(params[:user_id])
		@user.flowers << @flower

		if @flower.save
			redirect_to @user
		else
			render :action => :new
		end
	end

	def update
		if @flower.update(flower_params)
			redirect_to '/users/'
		else
			render :action => :edit
		end
	end

	def destroy
		@flower.destroy
		redirect_to root	
	end

	private
	def set_flower
		@flower = Flower.find(params[:id])
	end

	def flower_params
		params.require(:flower).permit(:name, :content, :description)
	end
end
