class CreateAdvertTypes < ActiveRecord::Migration
  def change
    create_table :advert_types do |t|
      t.integer :adv_type

      t.timestamps null: false
    end
  end
end
