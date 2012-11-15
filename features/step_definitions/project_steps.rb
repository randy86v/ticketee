Given /^there is a project called "(.*?)"$/ do |name|
  @project = FactoryGirl.create(:project , name: name)
end

Then /^I should not see "(.*?)"$/ do |project_name|
  page.should_not have_content project_name
end
