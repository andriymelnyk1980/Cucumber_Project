Feature: This feature would be creating a calculator for Add and Subtract

  @sanity
  Scenario: To Add two numbers
    Given I have a calculator
    When I add 4 and 5
    Then I should get the result as 9

  Scenario Outline: This sceanrio is to define the failure path
    Given I have calculator
    When I add "<int1>" and "<int2>"
    Then I should get the result as "<result>"

    Examples: 
      | int1 | int2 | result |
      |    3 |    7 |     10 |
      |    4 |    7 |     11 |
      |    4 |    9 |     11 |
