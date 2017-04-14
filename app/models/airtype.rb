class Airtype < ActiveRecord::Base
  validates :name, presence: true
end
