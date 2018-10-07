class FixImage < ActiveRecord::Migration[5.1]
  def change
    remove_column :courses, :image, :string
  end
end
