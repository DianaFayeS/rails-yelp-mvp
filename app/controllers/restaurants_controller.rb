class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all 
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  	@reviews = @restaurant.reviews
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  if restaurant.save
  	redirect_to @restaurant, notice: 'new restaurant created'
  else 
  	render :new
  end
end
  
  def address
  end
  
  private

  def restaurant_params
  	params.require(:restaurant).permit(:name, :address, :phone_category, :category)
  end
end
