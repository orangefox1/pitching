class MonkiesController < ApplicationController
  def index

    monkies_integer = params[:number_of_monkies].to_i
    @monkies_in_html = 0

    if monkies_integer < 100
      @monkies_in_html = monkies_integer
    else
      @warning = "fuck man , are you kidding me??? "+ monkies_integer.to_s

    end
  end

  def new
    @monkey=Monkey.new
  end

  def create
    @monkey=Monkey.new(params)
    permitted_params = params.require(:monkey).permit(:name, :weight)
    if @monkey.save
      render :action =>"new"
    else
      render :action =>"new"
    end
  end

  def list
  	@list=Monkey.all

  end
end
