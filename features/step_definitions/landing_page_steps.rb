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

Then('the body contains {string} as h1 style') do |content|
    expected_content = content
    xpath = "//div[@class='App au-grid']/main/div[2]/div/div/div/h1"
    page_content = get_element_text_by_xpath(xpath)
    # Kernel.puts page_content
    expect(page_content).to eq(expected_content)
end

Then('body link {int} has text {string}') do |link_number, link_text|
    expected_link_text = link_text
    xpath = "//div[@class='App au-grid']/main/div[2]/div/div/div/ul/li[#{link_number}]/a"
    actual_link_text = get_element_text_by_xpath(xpath)
    expect(actual_link_text).to eq(expected_link_text)
end

Then('body link {int} has url {string}') do |link_number, url|
    expected_link_url = url
    xpath = "//div[@class='App au-grid']/main/div[2]/div/div/div/ul/li[#{link_number}]/a"
    actual_link_url = @driver.find_element(xpath: xpath).attribute("href")
    # Kernel.puts actual_link_url
    expect(actual_link_url).to eq(expected_link_url)
end

Then('it resolves to an IG page with the title {string}') do |expected_title|
    xpath = "//div[@id='ig-status']"
    actual_title = get_element_text_by_xpath(xpath)
    # Kernel.puts actual_title
    expect(actual_title).to eq(expected_title)
end

Then('footer link {int} has text {string}') do |link_number, link_text|
    expected_link_text = link_text
    xpath = "//footer/div/nav/ul/li[#{link_number}]/a"
    actual_link_text = get_element_text_by_xpath(xpath)
    # Kernel.puts actual_link_text
    expect(actual_link_text).to eq(expected_link_text)
end

Then('footer link {int} has url {string}') do |link_number, url|
    expected_link_url = url
    xpath = "//footer/div/nav/ul/li[#{link_number}]/a"
    actual_link_url = @driver.find_element(xpath: xpath).attribute("href")
    # Kernel.puts actual_link_url
    expect(actual_link_url).to eq(expected_link_url)
end

Then('the footer contains {string}') do |content|
    expected_content = content
    xpath = "//div[@class='au-footer__end ']"
    page_content = get_element_text_by_xpath(xpath)
    # Kernel.puts page_content
    expect(page_content).to eq(expected_content)
end