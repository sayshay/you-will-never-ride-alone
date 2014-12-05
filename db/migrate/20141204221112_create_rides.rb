class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :starting_city
      t.string :ending_city
      t.integer :distance_in_miles
    end
  end
end
