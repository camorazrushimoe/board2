class AddImageToAdvert < ActiveRecord::Migration
  def change
  	add_column :adverts, :image, :string
  end
end
