class NewMigration < ActiveRecord::Migration
  def change
  	remove_column :adverts, :user_id, :string
  	add_column :adverts, :user_id, :integer
  end
end
