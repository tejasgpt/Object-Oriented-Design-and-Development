class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :companyid
      t.string :location
      t.string :sqf
      t.string :year
      t.string :style
      t.string :price
      t.string :floors
      t.string :basement
      t.string :owner
      t.string :contact
      t.string :potentialbuyers

      t.timestamps
    end
  end
end
