class RemoveActiveStatusFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :active_status, :integer
  end
end
