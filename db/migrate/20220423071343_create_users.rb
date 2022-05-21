class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact
      t.integer :active_status, default: true, :null =>false
      t.integer :rank

      t.timestamps
    end
  end
end


