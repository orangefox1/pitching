class AnimalsController < ApplicationController
  

  def view_animals
   @animals = Monkey.all
   puts"before"
    puts @animals
    puts"after"
  @animals.each do |animal|
    puts animal[:name]
    puts animal[:image]
  end
  end

  def creat_animals
  	@animal = Monkey.new
    puts params

  	if params[:monkey]

  		permitted_params = params.require(:monkey).permit(:name, :image)
  		
      if permitted_params.permitted?
  			Monkey.create permitted_params
  		end


  

  	end		
  end
end
