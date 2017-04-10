class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
