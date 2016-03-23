class AnimalsController < ApplicationController
  def view_animals
   @animals = Animals.all
  end

  def creat_animals
  	@animal = Animal.new

  	if params[:animal]
  		parmitted_params = params. require(:animal).permit(:name, :image)
  		if permitted_params.permitted?
  			Animal.create permitted_params

  		end
  	end		
  end
end
