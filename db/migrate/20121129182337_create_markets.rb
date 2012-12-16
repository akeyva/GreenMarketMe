class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :borough
      t.string :days_open
      t.float  :latitude
      t.float  :longitude
      t.string :hours
      t.boolean :distribute_health_bucks
      t.boolean :accepts_health_bucks
      t.boolean :accepts_EBT
      t.boolean :stellar
      t.boolean :gmaps
      t.timestamps
    end
  end
end
