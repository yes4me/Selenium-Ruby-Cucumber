Given(/^I navigate to home page$/) do
  usps.home_page.visit
end

When(/^I press on Signin button on home page$/) do
  usps.home_page.login_button.click
end

Then(/^I type my login "([^"]*)"$/) do |login|
  usps.login_page.login_field.send_keys login
end

And(/^I type my password "([^"]*)"$/) do |password|
  usps.login_page.password_field.send_keys password
end

Then(/^I press on Signin button on login page$/) do
  usps.login_page.signin_button.click
end

Then(/^I will see invalid login or password error message$/) do
  element = @browser.find_element(:id, "actionerrors").find_element(:css, "span.error")
  expect(element.text).to be == "We do not recognize your username and/or password. Please try again."
end

Then(/^I will see password required error message$/) do
  expect(@browser.find_element(:id, "error-invalid-password").text).to be == "A password is required."
end


Then(/^I will see login length error message$/) do
  text = @browser.find_element(:id, "error-min-username").text
  expect(text).to be == "Your Username must be at least 6 characters long."
end


Then(/^I will see password length error message$/) do
  text = @browser.find_element(:id, "error-min-password").text
  expect(text).to be == "Your Password must be at least 10 characters long."
end