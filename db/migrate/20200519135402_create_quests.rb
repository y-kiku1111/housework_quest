class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.string  :name,             null: false
      t.integer :price,            null: false
      t.integer :user_id,          null: false
      t.timestamps
    end
  end
end
