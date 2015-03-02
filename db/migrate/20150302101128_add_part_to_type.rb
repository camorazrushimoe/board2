class AddPartToType < ActiveRecord::Migration
  def change
  	remove_column :advert_types, :adv_type, :integer
  	add_column :advert_types, :adv_type, :string
  end
end
