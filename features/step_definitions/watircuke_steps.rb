
Given /I click the "(.*)" button/ do |type|
  find_button(type)
end

Given /I click the "(.*)" checkbox/ do |type|
  find_checkbox(type)
end

Given /I click the "(.*)" image/ do |type|
  find_image(type)
end

Given /I click the "(.*)" link/ do |type|
  find_link(type)
end

Given /I click the "(.*)" radio button/ do |type|
  find_radio_button(type)
end

Given /I select "(.*)" from "(.*)"/ do |text, type|
  find_select_list(text, type)
end

Given /I fill in the text field "(.*)" with "(.*)"/ do |type, text|
  find_text_field(type, text)
end

Given /I fill in the text field "(.*)" with random "(.*)"/ do |type, text|
  find_text_field_with_random(type, text)
end

Given /I click the "(.*)" div/ do |type|
  find_div(type)
end

Given /I click row "(.*)" in the "(.*)" table/ do |row, type|
  find_table(row, type)
end

Given /I verify the "(.*)" table only has "(.*)" rows/ do |what, guess|
  rows = @browser.table(:class => what).row_count()
  guess = guess.to_i
  assert_equal(rows, guess)
end
  
Given /^I submit the form "([^\"]*)"$/ do |form_name|
  find_form(form_name)
end

Given /^I am on (.+)$/ do |page_name|
  find_page(page_name)
end

Given /I upload "(.*)" to the "(.*)" file field/ do |file, type|
  find_file_field(file, type)
end

Then /^I should (NOT )?see the text "([^\"]*)"$/ do |visibility, text|
  expected = (visibility.to_s.strip == 'NOT') ? assert_false(@browser.contains_text(text)) : assert(@browser.contains_text(text))
end

Then /^I should (NOT )?see the exact text "([^\"]*)"$/ do |visibility, text|
  expected = (visibility.to_s.strip == 'NOT') ? assert_not_equal(@browser.contains_text(text), text) : assert_equal(@browser.contains_text(text))
end

Then /I am redirected to "(.*)"/ do |text|
  url = @browser.url
  assert_equal(@community_url + text, url)
end