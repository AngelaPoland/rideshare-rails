class EditDeactivatedColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :passengers, :deactivated, :boolean, :default => false
    change_column :drivers, :deactivated, :boolean, :default => false
  end
end
