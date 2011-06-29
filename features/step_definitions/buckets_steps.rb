Given /^I am on the buckets page$/ do
  visit buckets_path
end

When /^I click on "([^"]*)"$/ do |link_name|
  click_on link_name
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in field,:with=>value
end

Then /^there should be a bucket called "([^"]*)"$/ do |bucket_name|
  Bucket.where(:name=>bucket_name).count.should==1
end

Then /^I should see "([^"]*)"$/ do |value|
  page.should have_content(value)
end

