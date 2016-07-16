include AllureReportHelper

Before do |scenario|
  @scenario_name = scenario.name
end

After do |scenario|
  if scenario.failed?
    screenshot_file_path = capture_screenshot(scenario)
    AppiumHelper.start_driver
  end

  if AllureCucumber::FeatureTracker.tracker != nil
    attach_screenshot(scenario, screenshot_file_path) if scenario.failed?
  end

end