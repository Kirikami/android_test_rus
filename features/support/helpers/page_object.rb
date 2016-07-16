PageObject.module_eval do
  def initialize(root, visit=false)
    root = $driver.driver if root.nil?
    initialize_accessors if respond_to?(:initialize_accessors)
    initialize_browser(root)
    goto if visit && respond_to?(:goto)
    initialize_page if respond_to?(:initialize_page)
  end
end

PageObject::Platforms::SeleniumWebDriver::PageObject.class_eval do
  def text_field_value_set(identifier, value)
    process_selenium_call(identifier, PageObject::Elements::TextField, 'input', :type => 'text') do |how, what|
      text_field = @browser.find_element(how, what)
      text_field.clear if text_field.text
      value.gsub!(" ", "%s")
      text_field.send_keys value
    end
  end
end
