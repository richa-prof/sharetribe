class AddConfirmationAfterDaysAfterEndTimeToPaymentSettings < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :payment_settings, :confirmation_after_days_after_end_time, :integer, default: 2
  end
end
