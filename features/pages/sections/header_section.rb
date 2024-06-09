# Header section and its elements
class HeaderSection < SitePrism::Section
  element :search, '[class*="search--keyword"]'
  element :search_button, '[class*="search--submit"]'
end
