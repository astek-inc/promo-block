module Spree
  module Admin
    class PromoBlocksController < ResourceController

      private

        def permitted_resource_params
          params.require(:promo_block).
              permit(:id, :name, :page_url, :active,
                     promo_block_items_attributes: [:id, :promo_block_id, :link, :position, :image, :size]
              )
        end

    end
  end
end
