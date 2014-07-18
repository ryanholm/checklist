Given(/^I have not yet signed up$/) do
  true
end

Given(/^a user exists with email "(.*?)" and password "(.*?)"$/) do |email, password|
  visit new_user_registration_url
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button 'Sign up'
end