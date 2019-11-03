Feature: Factorial test negative scenarios

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue            |
      | 01         | The factorial of 01 is: 1 |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                                   |
      | +169       | The factorial of +169 is: 4.269068009004705e+304 |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                    |
      |     171    | The factorial of 171 is: Infinity |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | 1.5        | Please enter an integer |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | e3         | Please enter an integer |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | !@#$^3     | Please enter an integer |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      |            | Please enter an integer |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue          |
      | 10/2       | Please enter an integer |

