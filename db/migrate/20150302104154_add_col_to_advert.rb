class AddColToAdvert < ActiveRecord::Migration
  def change
  	add_column :adverts, :adverttype, :string
  end
end
