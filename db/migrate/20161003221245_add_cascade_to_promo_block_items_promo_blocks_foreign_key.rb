class AddCascadeToPromoBlockItemsPromoBlocksForeignKey < ActiveRecord::Migration
  def up
    remove_foreign_key :promo_block_items, :promo_blocks
    add_foreign_key :promo_block_items, :promo_blocks, on_delete: :cascade
  end

  def down
    remove_foreign_key :promo_block_items, :promo_blocks
    add_foreign_key :promo_block_items, :promo_blocks
  end
end
