class AddStatusToAdvert < ActiveRecord::Migration
  def change
    add_column :adverts, :status, :integer, default: 0
  end
end
