class CreateCaterogies < ActiveRecord::Migration
  def self.up
    create_table :caterogies do |t|
      t.integer :parent_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :caterogies
  end
end
