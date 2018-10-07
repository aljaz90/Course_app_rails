class FixImage4 < ActiveRecord::Migration[5.1]
  def change
    change_column :courses, :image, :text, :default => "https://c-lj.gnst.jp/public/img/common/noimage.jpg?20180831050038"
  end
end

