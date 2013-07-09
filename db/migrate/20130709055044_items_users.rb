class ItemsUsers < ActiveRecord::Migration
  def change 
  	create_table :items_users do |t|
  		t.integer :item_id
  		t.integer :user_id
  	end
  end 
end
