class CreateRecompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :recompanies do |t|
      t.string :name
      t.string :website
      t.string :address
      t.integer :size
      t.date :founded
      t.integer :revenue
      t.text :synopsis

      t.timestamps
    end
  end
end
