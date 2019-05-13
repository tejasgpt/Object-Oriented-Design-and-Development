class AddHouseHunterIdToInquiries < ActiveRecord::Migration[5.2]
  def change
    add_column :inquiries, :house_hunter_id, :integer
  end
end
