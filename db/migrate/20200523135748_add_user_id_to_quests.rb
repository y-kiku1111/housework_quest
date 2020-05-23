class AddUserIdToQuests < ActiveRecord::Migration[5.2]
  def change
    add_column :quests, :user_id, :integer
  end
end
