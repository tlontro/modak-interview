Given(/^a user at the aliexpress website$/) do
  ali_express_homepage.load
  close_valentines_popup_if_present
  close_notifications_popup_if_present
end

When(/^the user searches for "(.*?)"$/) do |search_term|
  ali_express_homepage.header_section.search.set(search_term)
  ali_express_homepage.header_section.search_button.click
end

When(/^the user goes to the (\d+)(?:st|nd|rd|th) page of the results$/) do |results_page_number|
  ali_express_catalog_page.pagination[results_page_number - 1].click
  expect(current_url).to include("page=#{results_page_number}")
end
