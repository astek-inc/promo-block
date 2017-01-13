Deface::Override.new(
    :original => 'a2e58f4c6e226d173c5dc642aea458728f54bff6',
    :virtual_path => 'spree/layouts/admin',
    :name => 'add_promo_blocks_item_to_admin_menu',
    :insert_bottom => '[data-hook="admin_tabs"]',
    :text => "<ul class=\"nav nav-sidebar\">
              <%= tab Spree.t(:promo_blocks), :url => admin_promo_blocks_path, :icon => 'stop' %>
          </ul>"
)
