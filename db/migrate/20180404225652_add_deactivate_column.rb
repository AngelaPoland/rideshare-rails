class AddDeactivateColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :deactivated, :boolean
    add_column :drivers, :deactivated, :boolean
  end

end
