require 'redis'

class TakeoffWorker
  include Sidekiq::Worker

  def perform(id)
    s = Redis::Semaphore.new(:map_reduce_semaphore, connection: "localhost")

    unless s.locked?
      s.lock(90)
      aircraft = Aircraft.find(id)
      sleep(aircraft.airtype.takeoff_time)
      aircraft.update_attributes(status: Aircraft.statuses[:fly])
      s.unlock
    end
  end
end
