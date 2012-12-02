class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.string :address
      t.string :borough
      t.string :days_open

      t.timestamps
    end
  end
end
