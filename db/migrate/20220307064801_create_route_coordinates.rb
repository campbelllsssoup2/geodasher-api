class CreateRouteCoordinates < ActiveRecord::Migration[7.0]
  def change
    create_table :route_coordinates do |t|
      t.references :coordinate, null: false, foreign_key: true
      t.references :route, null: false, foreign_key: true
      t.integer :index
      t.boolean :final

      t.timestamps
    end
  end
end
