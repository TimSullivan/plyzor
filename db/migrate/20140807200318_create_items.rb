class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true
      t.integer :created_by
      t.string :description
      t.float :quantity
      t.datetime :completed_at

      t.timestamps
    end
  end
end
