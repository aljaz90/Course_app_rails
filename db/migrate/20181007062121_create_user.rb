class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :admin, :default => false
      t.boolean :instructor, :default => false
    end
  end
end
