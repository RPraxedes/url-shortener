class CreateUrls < ActiveRecord::Migration[6.0]
  def change
    create_table :urls do |t|
      t.string :link, null: false
      t.string :shortlink, null: false

      t.timestamps
    end

    add_index :urls, :link, unique: true
    add_index :urls, :shortlink, unique: true
  end
end
