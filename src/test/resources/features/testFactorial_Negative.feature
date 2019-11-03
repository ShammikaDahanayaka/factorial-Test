Feature: Factorial test negative scenarios

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue            |
      | 01         | The factorial of 01 is: 1 |

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                                   |
      | +169       | The factorial of +169 is: 4.269068009004705e+304 |

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue           |
      | 3          | The factorial of 3 is: 6 |

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | 1.5        | Please enter an integer |

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | e3         | Please enter an integer |

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | !@#$^3     | Please enter an integer |

  @voda
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      |            | Please enter an integer |