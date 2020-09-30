class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :ip_address, null: false
      t.string :browser
      t.string :platform
      t.string :device
      t.string :region

      t.timestamps
    end
  end
end
