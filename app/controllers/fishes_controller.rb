class FishesController < ApplicationController
  def index
    @fishes = Fish.all
  end

  def show
    @fish = Fish.find(params[:id])
  end

  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new
    @fish.name = params[:name]
    @fish.color = params[:color]
    @fish.save
    redirect_to fish_path(@fish)
  end

  def edit
    @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
	  @fish.update(params.require(:fish))
	  redirect_to fish_path(@fish)
  end
end
