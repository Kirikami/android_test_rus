Given /^I divide (-?\d*\.{0,1}\d+) on (-?\d*\.{0,1}\d+)$/ do |first_number, second_number|
  on(MainScreen).divide first_number, second_number
end

Given /^I subtract (-?\d*\.{0,1}\d+) from (-?\d*\.{0,1}\d+)$/ do |second_number, first_number|
  on(MainScreen).subtract first_number, second_number
end

Then /^I should see result equals to (-?\d*\.{0,1}\d+)$/ do |result|
  expect(on(MainScreen).show_result).to eq result.to_i
end

Then /^I should see error message$/ do
  expect(on(MainScreen).error_meessage_shown?).to be_truthy
end

