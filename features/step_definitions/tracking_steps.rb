Then(/^I type "([^"]*)" to tracking search field$/) do |tracking_number|
  #@browser.find_element(:id, "quick-tools-solo--input").send_keys(tracking_number)
  @browser.find_element(:id, "quick-tools--input").send_keys(tracking_number)
end

Then(/^I press on search arrow$/) do
  @browser.find_element(:css, "input.quick-tools--track--submit.input--search").click
end

Then(/^I should see Multiple items found message$/) do
  element = @browser.find_element(:css, "div.tracking-progress.status-duplicate").find_element(:css, "p.warning")
  expect(element.text).to be == "Multiple items found."
end