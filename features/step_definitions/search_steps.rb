Given(/^I open search page$/) do
  puts "I am on search page"
end

Then(/^I search by name "([^"]*)"$/) do |search_term|
  puts search_term
end

And(/^I get search result$/) do
  puts "I get search result"
end

Then(/^items should have discounts tags$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  table = table.raw
  puts table
end