class FixImage3 < ActiveRecord::Migration[5.1]
  def change
    change_column :courses, :image, :text, :default => "https://www.freeiconspng.com/uploads/no-image-icon-15.png"
  end
end
