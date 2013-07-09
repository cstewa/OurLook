class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :url
      t.integer :user_id
      t.integer :count

      t.timestamps
    end
  end
end
