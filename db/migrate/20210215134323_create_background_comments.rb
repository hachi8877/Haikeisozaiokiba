class CreateBackgroundComments < ActiveRecord::Migration[5.2]
  def change
    create_table :background_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :background_image_id

      t.timestamps
    end
  end
end
