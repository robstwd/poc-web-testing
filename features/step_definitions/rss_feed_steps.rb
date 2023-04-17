
Given('the FHIR IG landing page has a RSS feed file') do
  @driver.get "https://fhir.digitalhealth.gov.au/package-feed.xml"
end

Given('{string} value is {string}') do |element,value|
  actual_value = @driver.find_element(xpath: element).text
  expect(actual_value).to eq(value)
end

Given('item {string} has {string} value {string}') do |item_number, element, element_value|
  xpath = "/rss/channel/item[#{item_number}]/#{element}"
  actual_value = @driver.find_element(xpath: xpath).text
  expect(actual_value).to eq(element_value)
end

Then('there are a total of exactly {int} item nodes') do |int|
  xpath = "/rss/channel/item[#{int + 1}]"
  expect { @driver.find_element(xpath: xpath) }.to raise_error(Selenium::WebDriver::Error::NoSuchElementError)
end
