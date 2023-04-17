def get_element_text_by_css_class(class_name)
    text = @driver.find_element(class: class_name).text
    return text 
end

def get_element_text_by_xpath(xpath)
    text = @driver.find_element(xpath: xpath).text
    return text 
end

Given('the first line has {string} as h1 style') do |content|
    expected_content = content
    xpath = "//div[@class='au-header__text']/h1"
    page_content = get_element_text_by_xpath(xpath)    
    # Kernel.puts page_content
    expect(page_content).to eq(expected_content)
end

Given('the header includes the registered trademark symbol after FHIR') do
    expected_content = "FHIR® Implementation Guides"
    page_content = get_element_text_by_css_class("au-header__subline")
    # Kernel.puts page_content
    expect(page_content).to eq(expected_content)
end

Then('the footer contains a link to the ADHA privacy policy') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the footer contains a link to the ADHA Terms of Use') do
  pending # Write code here that turns the phrase above into concrete actions
end