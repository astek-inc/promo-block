class CreatePromoBlockItems < ActiveRecord::Migration
  def change
    create_table :promo_block_items do |t|
      t.integer :promo_block_id
      t.string :link
      t.integer :position
      t.timestamps null: false

      t.index :position
    end

    add_foreign_key :promo_block_items, :promo_blocks
    add_attachment :promo_block_items, :image
  end
end
