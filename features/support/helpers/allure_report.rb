module AllureReportHelper
  TXT ||= 'txt'

  def self.write_to_file(file_name, debug_info, file_type=TXT)
    file_path = "allure_attachments/#{file_name.gsub(' ', '_')}.#{file_type}"
    File.open(file_path, 'w+') do |file|
      file.write("#{debug_info}\n\n")
    end
  end

  def capture_screenshot(scenario)
    screenshot_file_path = "#{PROJECT_DIR}/screenshots/#{scenario.name}_#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.png"
    screenshot("#{screenshot_file_path}")
    screenshot_file_path
  end

  def attach_screenshot(scenario, screenshot_file_path)
    scenario.attach_file('Screenshot', File.new(screenshot_file_path))
  end

end
