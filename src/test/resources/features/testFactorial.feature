Feature: Factorial test

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I take screenshot
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue           |
      | 0          | The factorial of 0 is: 1 |


  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I take screenshot
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue           |
      | 1          | The factorial of 1 is: 1 |


  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I take screenshot
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                                  |
      | 170        | The factorial of 170 is: 7.257415615307999e+306 |

  @factTest
  Scenario Outline: I test boundary input of "<testNumber>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I take screenshot
    And I enter "<testNumber>" into input field having id "number"
    When I click on element having id "getFactorial"
    Then I should be able to see element having id as "resultDiv" should have text as "<factorialValue>"
    Then I take screenshot
    Examples:
      | testNumber | factorialValue                   |
      | -1         | Please enter an positive integer |

  @factTest
  Scenario: I verify page title
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then I should see page title as "factorial"

  @factTest
  Scenario Outline: I verify page link of "<link>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then link having partial text "<link>" should be present
    Then I click on link having partial text "<link>"
    Then I take screenshot
    Then I should see page title as "qainterview.pythonanywhere.com/terms"
    Examples:
      | link                |
      | Terms and Conditions |

  @factTest
  Scenario Outline: I verify page link of "<link>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then link having partial text "<link>" should be present
    Then I click on link having partial text "<link>"
    Then I take screenshot
    Then I should see page title as "qainterview.pythonanywhere.com/privacy"
    Examples:
      | link    |
      | Privacy |

  @factTest
  Scenario Outline: I verify page link of "<link>"
    Given I navigate to "http://qainterview.pythonanywhere.com/"
    Then link having partial text "<link>" should be present
    Then I click on link having partial text "<link>"
    Then I take screenshot
    Then I should see page title as "Qxf2 Services: Outsourced Software QA for startups"
    Examples:
      | link          |
      | Qxf2 Services |