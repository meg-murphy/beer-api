class CreateBeerAvailabilityCities < ActiveRecord::Migration[5.0]
  def change
    create_table :beer_availability_cities do |t|
      t.string :city
      t.string :state
      t.integer :beer_id

      t.timestamps
    end
  end
end
