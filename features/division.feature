Feature: Division
  In order to receive correct division results
  As a User
  I would like to check division functionality

  Scenario: Divide two positive numbers
    Given I divide 10 on 2
    Then I should see result equals to 5

  Scenario: Divide smaller number on bigger
    When I divide 2 on 10
    Then I should see result equals to 0.5

  Scenario: Divide for result to be not an integer
    When I divide 15 on 4
    Then I should see result equals to 3.75

  Scenario: Divide two negative number
    Given I divide -15 on -5
    Then I should see result equals to 3

  Scenario: Divide positive number on negative number
    Given I divide 30 on -3
    Then I should see result equals to -10

  Scenario: Divide negative number on positive number
    Given I divide -50 on 2
    Then I should see result equals to -25

  Scenario: Divide not an integer numbers
    Given I divide 2.5 on 0.5
    Then I should see result equals to 5

  Scenario: Divide not integer number on integer
    Given I divide 2.5 on 5
    Then I should see result equals to 0.5

  Scenario: Divide integer number on not integer
    Given I divide 5 on 2.5
    Then I should see result equals to 2

  Scenario: Divide number on itself
    Given I divide 13 on 13
    Then I should see result equals to 1

  Scenario: Divide number on one
    Given I divide 6 on 1
    Then I should see result equals to 6

  Scenario: Divide zero
    When I divide 0 on 499
    Then I should see result equals to 0

#  Scenario Outline: Positive tests
#    Given I divide <first_number> on <second_number>
#    Then I should see result equals to <result>
#
#  Examples: Positive data
#    | first_number | second_number | result |
#    | 10           | 2             | 5      |
#    | -15          | -5            | 3      |
#    | 30           | -3            | -10    |
#    | -50          | 2             | -25    |
#    | 2.5          | 0.5           | 5      |
#    | 2.5          | 5             | 0.5    |
#    | 5            | 2.5           | 2      |
#    | 13           | 13            | 1      |
#    | 6            | 1             | 6      |
#    | 0            | 499           | 0      |

  Scenario: Divide on zero
    Given I divide 5 on 0
    Then I should see error message