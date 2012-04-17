class VibersController < ApplicationController
  def index
    @vibers = Viber.all
  end
  
  def edit
    @viber = current_viber
  end
  
  def update
    @viber = current_viber
    @viber.update_attributes params[:viber]
    redirect_to root_url
  end
end
