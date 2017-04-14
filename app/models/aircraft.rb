class Aircraft < ActiveRecord::Base
  belongs_to :airtype

  validates :airtype, presence: true

  enum status: %i(on_base waiting fly)

  scope :in_aeroport, ->{ where.not(status: Aircraft.statuses[:fly]) }
  scope :on_takeoff, ->{ where(status: Aircraft.statuses[:waiting]) }

  def allow_takeoff
    self.status = :waiting
    self.save!
    TakeoffWorker.perform_async(id)
  end
end
