class TakeoffWorker
  include Sidekiq::Worker

  def perform(id)
    aircraft = Aircraft.find(id)
    sleep(aircraft.airtype.takeoff_time)
    aircraft.update_attributes(status: Aircraft.statuses[:fly])
  end
end
