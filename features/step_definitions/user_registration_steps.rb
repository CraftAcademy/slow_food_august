Given(/^I am on the registration page$/) do
  visit '/auth/register'
end

When(/^I click the "([^"]*)" button$/) do |link|
  click_link_or_button link
end
