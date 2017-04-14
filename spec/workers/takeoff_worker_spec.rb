require 'rails_helper'

require 'sidekiq/testing'
Sidekiq::Testing.fake!

RSpec.describe TakeoffWorker, type: :worker do
  it 'must adding' do
    expect { TakeoffWorker.perform_async(0) }.to change(TakeoffWorker.jobs, :size).by(1)
  end
end
