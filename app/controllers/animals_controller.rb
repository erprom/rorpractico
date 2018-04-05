class AnimalsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@animal = @user.animals.find(params[:id])
	end
	def show
		@user = User.find(params[:user_id])
	    @animal = @user.animals.find(params[:id])
	end
	def new
		@user = User.find(params[:user_id])
		@animal = @user.animals.new
	end
	def edit
		@user = User.find(params[:user_id])
	    @animal = @user.animals.find(params[:id])
	end
	def create
	    @user = User.find(params[:user_id])
	    if @user.animals.count <6
	    	@animal = @user.animals.create(animal_params)
		    if @animal.save
		    	redirect_to user_path(@user)
			else
				render 'new'
			end
			else
			render 'new'
		end
  	end
  	def update
  		@user = User.find(params[:user_id])
  		@animal = @user.animals.find(params[:id])
  		if @animal.update(animal_params)
  			redirect_to user_path(@user)
  		else
  			render 'edit'
  		end
  	end
  	def destroy
	    @user = User.find(params[:user_id])
	    @animal = @user.animals.find(params[:id])
	    @animal.destroy
	    redirect_to user_path(@user)
  	end
 
  private
    def animal_params
      params.require(:animal).permit(:nombre,:edad,:sexo,:tipo)
    end
end
