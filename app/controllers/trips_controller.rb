class TripsController < ApplicationController

  def index
    @trips = Trip.all
    respond_to do |format|
      format.html
      format.json { render json: @trips }
    end
  end

end