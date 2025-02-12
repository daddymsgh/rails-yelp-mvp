class RestaurantsController < ApplicationController

  # '/restaurants'
  def index
    @restaurants = Restaurant.all
  end

  # '/restaurants/1'
  def show
    # Rails pulls the id from the URL and puts in the params
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # this is for the form builder (with will build the path + method)
    @restaurant = Restaurant.new
  end

  # we can only trigger this action, by submitting a form
  # it's only purpose is to create, so it doesnt have a view
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      # redirect_to restaurants_path
      redirect_to restaurant_path(@restaurant)
    else
      # if the restaurant doesnt save, we want to show the form again
      # render the form page again aka new.html.erb
      render :new, status: :unprocessable_entity # 422
    end
  end

  private

  def restaurant_params
    # for security reasons, we are whitelisting our params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end
end
