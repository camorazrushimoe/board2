class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :title
      t.string :description
      t.string :price
      t.string :user_id

      t.timestamps null: false
    end
  end
end
