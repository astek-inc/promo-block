Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :promo_blocks
  end
end
