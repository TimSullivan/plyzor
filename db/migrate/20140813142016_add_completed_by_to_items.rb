class AddCompletedByToItems < ActiveRecord::Migration
  def up
    add_column :items, :completed_by_user_id, :integer
    add_index :items, :completed_by_user_id

    u = User.find_by_username "chronologist"
    Item.complete.update_all completed_by_user_id: u.id
  end

  def down
    remove_column :items, :completed_by_user_id
  end
end
