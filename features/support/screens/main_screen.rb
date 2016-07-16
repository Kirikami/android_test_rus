class MainScreen
  include PageObject

  text_field :first_argument, xpath: "//*[@content-desc='arg1']"
  text_field :second_argument, xpath: "//*[@content-desc='arg2']"
  text_field :result, xpath: "//*[@content-desc='result']"
  button :subtract_btn, xpath: "//*[@content-desc='subtraction']"
  button :divide_btn, xpath: "//*[@content-desc='division']"

  def subtract first_number, second_number
    self.first_argument = first_number
    self.second_argument = second_number
    subtract_btn
  end

  def divide first_number, second_number
    self.first_argument = first_number
    self.second_argument = second_number
    divide_btn
  end

  def show_result
    result_element.text.to_i
  end

end