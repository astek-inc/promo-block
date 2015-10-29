module Spree
  module Admin
    class PromoBlocksController < ResourceController

      before_action :instantiate_items, only: :new

      private

        def permitted_resource_params
          params.require(:promo_block).
              permit(:id, :name, :page_url, :active,
                     promo_block_items_attributes: [:id, :promo_block_id, :link, :position, :image, :size]
              )
        end

        def instantiate_items
          def new
            @promo_block = Spree::PromoBlock.new
            4.times { item = @promo_block.promo_block_items.build }
          end
        end

    end
  end
end
