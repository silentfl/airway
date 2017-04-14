class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.references :aircraft
      t.integer :status, default: 0

      t.datetime :created_at, null: false
    end
  end
end
