Feature: Factorial test
  As a user I should able calculate factorial number for given number

  @voda1
  Scenario Outline: I test boundary inputs
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I take screenshot
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                                  |
      | 0          | The factorial of 0 is: 1                        |
      | 1          | The factorial of 1 is: 1                        |
      | 170        | The factorial of 170 is: 7.257415615307999e+306 |
      | -1         | Please enter an positive integer                |

  @voda1
  Scenario: I verify page title
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I should see page title as "factorial"

  @voda
  Scenario Outline: I test boundary inputs for negative scenarios
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                                   |
      | 01         | The factorial of 01 is: 1                        |
      | +169       | The factorial of +169 is: 4.269068009004705e+304 |
      | 3          | The factorial of 3 is: 6                         |
      | 1.5        | Please enter an integer                          |
      | e3         | Please enter an integer                          |
      | !@#$^3     | Please enter an integer                          |
      |            | Please enter an integer                          |