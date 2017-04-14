class CreateAirtypes < ActiveRecord::Migration
  def change
    create_table :airtypes do |t|
      t.string :name
      t.integer :takeoff_time

      t.timestamps null: false
    end
  end
end
