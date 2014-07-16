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