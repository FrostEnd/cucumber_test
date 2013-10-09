Then /^I wait "(.+)" seconds$/ do |seconds|
  sleep seconds.to_i
end

When /^I follow "(.+)" and accept alert$/ do |link|
  click_link(link)
  page.driver.browser.switch_to.alert.accept
end

When /^I follow "(.+)" and reject alert$/ do |link|
  click_link(link)
  page.driver.browser.switch_to.alert.dismiss
end