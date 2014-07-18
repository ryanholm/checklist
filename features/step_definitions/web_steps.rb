When(/^I go to the "([a-z\s]*)" page$/) do |page|
  puts page
  url = send("#{page.gsub(' ', '_')}_url")
  visit url
end

When(/^I fill in "([a-zA-Z\s]*)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click "(.*?)"$/) do |button|
  click_button button
end

When(/^a user "(.*?)" with a password "(.*?)"$/) do |arg1, arg2|
end

When(/^I am on the login page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I should see "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end


