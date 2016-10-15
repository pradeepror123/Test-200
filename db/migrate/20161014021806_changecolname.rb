class Changecolname < ActiveRecord::Migration
  def change
    rename_column :users, :phone, :cell
  end
end
