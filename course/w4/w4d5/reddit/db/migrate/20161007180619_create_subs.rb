class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.text :description
      t.integer :mod_id, null: false
      t.index :title
      t.timestamps null: false
    end
  end
end
