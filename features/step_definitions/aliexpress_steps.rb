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
  wait_until {ali_express_catalog_page.active_page_number.text == results_page_number.to_s}
  expect(current_url).to include("page=#{results_page_number}")
end

When(/^the user clicks the (\d+)(?:st|nd|rd|th) product$/) do |product_number|
  ali_express_catalog_page.products[product_number-1].click()
end

Then(/^the user goes to the product page$/) do
  switch_to_last_tab
end