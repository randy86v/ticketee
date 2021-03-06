Given /^I am on the homepage$/ do
  visit root_path
end

When /^I follow "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |text_field, text|
  fill_in text_field, with: text
end

When /^I press "(.*?)"$/ do |button_name|
  click_button button_name
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content arg1
end

Then /^I should be on the project page for "(.*?)"$/ do |project_name|
  current_path.should eq project_path(Project.find_by_name!(project_name).id)  
end

