class ChangeDriverStatus < ActiveRecord::Migration[5.1]
  def change
    change_column :drivers, :available, :boolean, :default => true
  end
end
