class CreateFavotites < ActiveRecord::Migration[5.2]
  def change
    create_table :favotites do |t|
      t.integer :user_id
      t.integer :image_id
      
      t.timestamps
    end
  end
end
