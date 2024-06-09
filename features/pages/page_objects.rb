# Pages module - module responsible to instantiate pages
module Pages
  def ali_express_homepage
    @ali_express_homepage ||= AliExpressHomePage.new
  end

  def ali_express_catalog_page
    @ali_express_catalog_page ||= AliExpressCatalogPage.new
  end
end

World(Pages)
