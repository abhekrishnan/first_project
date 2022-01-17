Given(/^I am on google home page$/) do
  $browser.goto "https://www.google.com/"
  puts "Google Home page is landed successfully"

  $home = Homepage.new
end

Then(/^I verify gmail link is available$/) do
  # $home.gmail_link.flash
  expect($home.gmail_link.present?).to be true

  # gmail_link = $browser.link(text: "Gmail")
  # expect(gmail_link.present?).to be true
end

And(/^I verify image link is available$/) do
  # image_link = $browser.link(text: "Images")

  expect($home.image_link.present?).to be true

end

And(/^I click the image element$/) do
  $home.image_link.click
  expect($home.image_element.present?).to be false
end

When(/^I type (.*) in search box$/) do |search|
  $home.search_text.value = search
  $home.search_button.click
  $result = Resultpage.new
end

Then(/^I validate (.*) present in topic of second page$/) do |result_search|
  actual_result = $result.heading_element.text
  expect(actual_result).to eql(result_search), "Actual result:#{actual_result}, Expected result:#{result_search}"

  #
end