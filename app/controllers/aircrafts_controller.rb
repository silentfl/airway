class AircraftsController < ApplicationController
  def index
    @aircrafts = Aircraft.in_aeroport
  end

  def takeoff
    aircraft = Aircraft.find_by_id(params[:id])
    if aircraft
      aircraft.allow_takeoff
      redirect_to action: :index
    else
      render_404
    end
  end

  def takeoff_queue
    @aircrafts = Aircraft.on_takeoff
    render @aircrafts
  end
end
