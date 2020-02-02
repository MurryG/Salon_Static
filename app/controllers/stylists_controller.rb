class StylistsController < ApplicationController
  
  def index
    @stylists = Stylist.all
  end

  def new
    @stylist = Stylist.new
  end

  def create
    @stylist = Stylist.create(stylist_params)
    redirect_to stylists_path
  end

  private

  def stylist_params
    params.require(:stylist).permit(:name, :stylist_id, :y_o_e)
  end
end
