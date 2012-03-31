class VibersController < ApplicationController
  def index
    @vibers = Viber.all
  end
end
