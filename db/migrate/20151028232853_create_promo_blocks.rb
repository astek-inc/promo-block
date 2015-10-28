class CreatePromoBlocks < ActiveRecord::Migration
  def change
    create_table :promo_blocks do |t|
      t.string :name
      t.string :page_url
      t.boolean :active, null: false, default: true
      t.timestamps null: false

      t.index :page_url, unique: true
      t.index :active
    end
  end
end
