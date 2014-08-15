class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :avatar
      t.integer :album_id  
       t.string :tag_name
      t.timestamps
    end
  end
end
