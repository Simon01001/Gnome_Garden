class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :gnome, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :booking_date

      t.timestamps
    end
  end
end
