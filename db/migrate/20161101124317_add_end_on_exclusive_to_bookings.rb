class AddEndOnExclusiveToBookings < ActiveRecord::Migration[4.2]
  def change
    add_column :bookings, :end_on_exclusive, :date, after: :end_on
  end
end
