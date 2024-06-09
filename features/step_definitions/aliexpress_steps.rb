Given(/^a user at the aliexpress website$/) do
  ali_express_homepage.load
  close_valentines_popup_if_present
  close_notifications_popup_if_present
end

When(/^the user searches for "(.*?)"$/) do |search_term|
  ali_express_homepage.header_section.search.set(search_term)
  ali_express_homepage.header_section.search_button.click()
end