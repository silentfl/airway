class Aircraft < ActiveRecord::Base
  belongs_to :airtype

  validates :airtype, presence: true

  enum status: %i(on_base waiting fly)
end
