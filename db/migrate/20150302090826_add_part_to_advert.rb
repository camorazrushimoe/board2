class AddPartToAdvert < ActiveRecord::Migration
  def change
  	remove_column :adverts, :category_id, :string
  	add_column :adverts, :category_id, :integer
  end
end
