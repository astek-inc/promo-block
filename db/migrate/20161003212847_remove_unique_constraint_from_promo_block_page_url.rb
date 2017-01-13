class RemoveUniqueConstraintFromPromoBlockPageUrl < ActiveRecord::Migration
  def up
    remove_index :promo_blocks, :page_url
    add_index :promo_blocks, :page_url
  end

  def down
    remove_index :promo_blocks, :page_url
    add_index :promo_blocks, :page_url, unique: true
  end
end
