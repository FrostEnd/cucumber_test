Given /^I have a user named "(.+)" with email "(.+)" and password "(.+)"$/ do |name, email, password|
  User.create(username: name, email: email, password: password, password_confirmation: password)
end

When /^I am logged in with "(.+)" and "(.+)"$/ do |email, password|
  visit path_to("signin page")
  fill_in "Email", with: email
  fill_in "Password", with: password
  click_button "Sign in"
end