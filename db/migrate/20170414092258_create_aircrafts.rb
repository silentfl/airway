class CreateAircrafts < ActiveRecord::Migration
  def change
    create_table :aircrafts do |t|
      t.references :airtype
      t.string :number
      t.integer :status, default: 0

      t.timestamps null: false
    end

  end
end
