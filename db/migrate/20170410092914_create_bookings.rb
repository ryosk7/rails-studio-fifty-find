class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :date
      t.integer :member
      t.string :status
      t.references :studio, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
