class AddDetailsToRealtor < ActiveRecord::Migration[5.2]
  def change
    add_column :realtors, :name, :string
    add_column :realtors, :phone, :string
    add_column :realtors, :companyid, :string
  end
end
