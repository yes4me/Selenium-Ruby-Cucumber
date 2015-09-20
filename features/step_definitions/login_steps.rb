Given(/^I prepare my environment for test execution$/) do
  puts "Hello world!"
  puts "I prepare my environment for test execution"
end

Given(/^I open login page$/) do
  puts "I am on login page"
end

Then(/^I send my login BayQaTraining$/) do
  puts "I send my login BayQaTraining"
end

And(/^I send my password root1234$/) do
  puts "I send my password root1234"
end

When(/^I press Login button$/) do
  puts "I press Login button"
end


Then(/^I should be signed in as a user "([^"]*)"$/) do |username|
  puts username
  #printf("==>#{username}<==")
end

Then(/^I send my login "([^"]*)"$/) do |login|
  puts login
end

And(/^I send my password "([^"]*)"$/) do |password|
  puts password
end

And(/^I should( not)? see error message$/) do |condition|
  if condition == " not"
    puts "ok"
   else
    puts "error"
  end
end