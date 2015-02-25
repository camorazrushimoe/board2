class AddCategoryIdToAdvert < ActiveRecord::Migration
  def change
  	add_column :adverts, :category_id, :string
  end
end
