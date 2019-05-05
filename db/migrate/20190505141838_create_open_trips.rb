class CreateOpenTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :open_trips do |t|
      t.integer :price
      t.references :user, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
