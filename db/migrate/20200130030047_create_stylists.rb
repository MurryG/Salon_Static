class CreateStylists < ActiveRecord::Migration[5.2]
  def change
    create_table :stylists do |t|
      t.string :name
      t.integer :stylist_id
      t.integer :y_o_e
      t.timestamps
    end
    add_index :stylists, :name
  end
end
