class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :ads, :user_id
    add_index :ads, :created_at
  end

  def self.down
    drop_table :ads
  end
end
