Given /^there is a bucket called "([^"]*)"$/ do |bucket_name|
  Bucket.create!(:name=>"Work")
end

Then /^there should be a task called "([^"]*)"$/ do |task_name|
  Task.where(:title=>task_name).count.should==1
end

Given /^the bucket "([^"]*)" has the following tasks$/ do |bucket_name, table|
  bucket = Bucket.where(:name=>bucket_name).first
  table.hashes.each do |hash|
    bucket.tasks.create!(hash)
  end
end

When /^I visit the tasks page for "([^"]*)"$/ do |bucket_name|
  bucket = Bucket.where(:name=>bucket_name).first
  visit bucket_tasks_path(bucket)
end

Then /^I should see "([^"]*)" within "([^"]*)"$/ do |value, selector|
  within(selector) do
    page.should have_content(value)
  end
end

