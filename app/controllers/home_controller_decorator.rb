Spree::HomeController.class_eval do
  before_action :load_promo_block, only: :index

  private

  def load_promo_block
    @promo_block = Spree::PromoBlock.where(:page_url => request.original_fullpath, :active => true).first
  end
end
