class CreateTripCoordinates < ActiveRecord::Migration[7.0]
  def change
    create_table :trip_coordinates do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :coordinate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
