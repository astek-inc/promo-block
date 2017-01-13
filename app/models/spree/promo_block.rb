module Spree
  class PromoBlock < ActiveRecord::Base
    self.table_name = 'promo_blocks'
    has_many :promo_block_items
    accepts_nested_attributes_for :promo_block_items

    validates_presence_of :name, :page_url
    validates_uniqueness_of :page_url, conditions: -> { where(active: true) }
    validates_inclusion_of :active, in: [true, false]
  end
end
