class AddSome < ActiveRecord::Migration
  def change
  	remove_column :adverts, :status, :integer
  	add_column :adverts, :status, :string, default: 0
  end
end
