class AddBlockedToTestimonials < ActiveRecord::Migration[4.2][5.1]
  def change
    add_column :testimonials, :blocked, :boolean, default: false
  end
end
