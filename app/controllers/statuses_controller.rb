class StatusesController < ApplicationController
  def index
    @statuses = Status.all.order(created_at: :desc)
  end
end
