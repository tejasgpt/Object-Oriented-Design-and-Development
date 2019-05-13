class CreateInquiries < ActiveRecord::Migration[5.2]
  def change
    create_table :inquiries do |t|
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
