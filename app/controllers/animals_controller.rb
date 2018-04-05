class AnimalsController < ApplicationController
	def show
		@animal = Animal.find(params[:id])
	end
	def new
		@user = User.find(params[:user_id])
	end
	def create
	    @user = User.find(params[:user_id])
	    @animal = @user.animals.create(animal_params)
	    redirect_to user_path(@user)
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
