class AddDriverStatus < ActiveRecord::Migration[5.1]
  def change
    add_column :drivers, :available, :boolean, :default => false
  end
end
