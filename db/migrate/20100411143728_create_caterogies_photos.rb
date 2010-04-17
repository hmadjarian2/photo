class CreateCaterogiesPhotos < ActiveRecord::Migration
  def self.up
    create_table :caterogies_photos, :id => false do |t|
      t.integer :caterogy_id
      t.integer :photo_id
    end
  end

  def self.down
    drop_table :caterogies_photos
  end
end
