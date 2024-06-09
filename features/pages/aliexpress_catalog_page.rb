# AliExpressCatalogPage Page elements
class AliExpressCatalogPage < SitePrism::Page
  set_url "/"
  elements :pagination, ".comet-pagination-item"
  element :active_page_number, ".comet-pagination-item-active"
end
