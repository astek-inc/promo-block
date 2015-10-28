module Spree
  class PromoBlock < ActiveRecord::Base
    self.table_name = 'promo_blocks'
    has_many :promo_block_items
    accepts_nested_attributes_for :promo_block_items
  end
end
