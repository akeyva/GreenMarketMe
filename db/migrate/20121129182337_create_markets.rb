class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :borough
      t.string :days_open
      t.float  :latitude
      t.float  :longitude
      t.boolean :gmaps
      t.timestamps
    end
  end
end
