class CreateCompanions < ActiveRecord::Migration
  def change
    create_table :companions do |t|
      t.integer :ride_id
      t.integer :driver_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
