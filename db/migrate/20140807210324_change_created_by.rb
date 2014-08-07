class ChangeCreatedBy < ActiveRecord::Migration
  def change
    rename_column :items, :created_by, :created_by_user_id
  end
end
