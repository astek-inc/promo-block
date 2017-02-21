module Spree
  class PromoBlockItem < ActiveRecord::Base

    self.table_name = 'promo_block_items'

    attr_accessor :size

    belongs_to :promo_block

    has_attached_file :image,
      styles: {large: '800x760!', medium: '475x780!', small: '800x460!'}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    default_scope {order('position ASC')}

  end
end
