class AddCapacityToStudios < ActiveRecord::Migration[5.0]
  def change
    add_column :studios, :capacity, :integer
  end
end
