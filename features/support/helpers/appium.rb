module AppiumHelper
  class << self
    def init_environment
      @desired_caps = {
          caps: {
              platformName: "android",
              deviceName: ENV['DEVICE_NAME'],
              app: './Calc.apk',
          },
          appium_lib: {
              port: 4723
          }
      }
    end

    def start_driver
      Appium::Driver.new(@desired_caps).start_driver
      Appium.promote_appium_methods Object
    end

    def fill_text_into_text_field_with_id(text, id)
      Appium.execute_script("document.getElementById('#{id}').value = '#{text}'")
    end
  end
end
