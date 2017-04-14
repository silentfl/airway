class Status < ActiveRecord::Base
  belongs_to :aircraft

  enum status: %i(on_base waiting fly)
end
