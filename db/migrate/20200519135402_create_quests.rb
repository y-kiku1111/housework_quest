class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name,              null: false
      t.text :description,         null: false
      t.integer :price,            null: false

      t.timestamps
    end
  end
end
