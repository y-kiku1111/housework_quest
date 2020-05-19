class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
