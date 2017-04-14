class Aircraft < ActiveRecord::Base
  belongs_to :airtype
  has_many :statuses, class_name: 'Status'

  validates :airtype, presence: true

  enum status: %i(on_base waiting fly)

  scope :in_aeroport, ->{ where(status: Aircraft.statuses[:on_base]) }
  scope :on_takeoff, ->{ where(status: Aircraft.statuses[:waiting]) }

  after_save :create_status

  def allow_takeoff
    self.status = :waiting
    self.save!
    TakeoffWorker.perform_async(id)
  end

  private

  def create_status
    self.statuses.create!(status: self.status)
  end
end
