class CatsController < ApplicationController

  def index
    @cat = Cat.new
    @cats = Cat.all
  end

  def create
    @cat = Cat.create(cat_params)
    if @cat.save
      redirect_to cats_path
    else
      render :index
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :color)
  end
end