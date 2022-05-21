class AddActivestatusToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :activestatus, :boolean, default: true
  end
end
