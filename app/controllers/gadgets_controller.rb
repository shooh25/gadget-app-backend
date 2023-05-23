class GadgetsController < ApplicationController
  def index
    gadgets = Gadget.all
    render json: gadgets
  end

  def show
    gadget = Gadget.find(params[:id])
    render json: gadget
  end
end
