class AddRealtoridToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :realtor_id, :int
  end
end
