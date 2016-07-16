Feature: Subtraction
  In order to receive correct subtraction result
  As a User
  I would like to check subtraction functionality

  Scenario: I subtract two positive numbers
    Given I subtract 10 from 13
    Then I should see result equals to 3

  Scenario: I subtract bigger positive number
    Given I subtract 15 from 4
    Then I should see result equals to -11

  Scenario: I subtract zero
    Given I subtract 0 from 3
    Then I should see result equals to 3

  Scenario: I subtract negative number
    Given I subtract -2 from 5
    Then I should see result equals to 7

  Scenario: I subtract from negative number
    Given I subtract 11 from -7
    Then I should see result equals to -18

  Scenario: I subtract two negative numbers
    Given I subtract -18 from -2
    Then I should see result equals to -16

  Scenario: I subtract number from itself
    Given I subtract 245 from 245
    Then I should see result equals to 0

#  Scenario Outline: Subtraction of numbers
#    Given I subtract <second_number> from <first_number>
#    Then I should see result equals to <result>
#
#  Examples:
#    | first_number | second_number | result |
#    | 13           | 10            | 3      |
#    | 4            | 15            | -11    |
#    | 3            | 0             | 3      |
#    | 5            | -2            | 7      |
#    | -7           | 11            | -18    |
#    | -18          | -2            | -16    |
#    | 245          | 245           | 0      |
