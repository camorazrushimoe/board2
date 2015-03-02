class AddSomeToSome < ActiveRecord::Migration
  def change
  	add_column :adverts, :advert_type_id, :integer
  end
end
