class PicturesController < ApplicationController

  def new
    # we need @restaurant in our `simple_form_for`
    @realisation = Realisation.find(params[:realisation_id])
    @realisation = Realisation.new
  end

  def create
    @realisation = Realisation.new(realisation_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @picture.realisation = Realisation.find(params[:realisation_id])
    @picture.save
  end

  private

  def picture_params
    params.require(:picture).permit(:url)
  end
end
