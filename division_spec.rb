require 'rspec'
require 'appium_lib'
require 'json'
require 'rest_client'
require_relative 'features/support/screens/main_screen'

module DivisionSpec

  def desired_caps
    {
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

  describe 'Division' do

    before do
      Appium::Driver.new(desired_caps).start_driver
    end

    after do
      driver_quit
    end

    describe 'positive test' do

      context 'of 10 on 2' do

        before do
          on(MainScreen).divide(10, 2)
        end

        it 'should produce result equals to 5' do
          expect(on(MainScreen).show_result).to eq 5
        end
      end

      context 'of -15 on -5' do

        before do
          on(MainScreen).divide(-15, -5)
        end

        it 'should produce result equals to 3' do
          expect(on(MainScreen).show_result).to eq 3
        end

      end

      context 'of 30 on -3' do

        before do
          on(MainScreen).divide(30, -3)
        end

        it 'should produce result equals to -10' do
          expect(on(MainScreen).show_result).to eq -10
        end

      end

      context 'of -50 on 2' do

        before do
          on(MainScreen).divide(50, 2)
        end

        it 'should produce result equals to -25' do
          expect(on(MainScreen).show_result).to eq -25
        end
      end

      context 'of 2.5 on 0.5' do

        before do

        end

        it 'should produce result equals to 5' do

        end

      end

      context 'of 2.5 on 5' do

        before do

        end

        it 'should produce result equals to 0.5' do

        end

      end

      context 'of 5 on 2.5' do

        before do

        end

        it 'should produce result equals to 2' do

        end

      end

      context 'of 13 on 13' do

        before do

        end

        it 'should produce result equals to 1' do

        end

      end

      context 'of 6 on 1' do

        before do

        end

        it 'should produce result equals to 6' do

        end

      end
    end


    describe 'negative test' do

      context 'of devision by zero' do

        before do

        end

        it 'should produce result equals to error' do
        end

      end
    end
  end

end

