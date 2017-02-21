Deface::Override.new(
    original: '0557bcc4171004928c8eade01ba90d34a67b1a3e',
    virtual_path: 'spree/layouts/admin',
    name: 'add_promo_blocks_item_to_admin_menu',
    insert_bottom: '[data-hook="admin_tabs"]',
    text: "<ul class=\"nav nav-sidebar\">
              <%= tab Spree.t(:promo_blocks), url: admin_promo_blocks_path, icon: 'stop' %>
          </ul>"
)
