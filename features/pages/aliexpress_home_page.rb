# AliExpressHome Page Page elements
class AliExpressHomePage < SitePrism::Page
  set_url "/"
  section :notification_section, NotificationsSection, "html "
  section :header_section, HeaderSection, '[id*="_global_header"]'
  section :valentines_popup_section, ValentinesSection, ".image-poplayer-modal"
  section :valentines_popup_sections, ValentinesSection, ".image-poplayer-modals"
end
