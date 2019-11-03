### factorial-Test

This repository contains a collection of sample `factorial-Test` projects and libraries that demonstrate how to use the tool and develop automation script using the Cucumber (v 3.0.0) BDD framework with Java as programming language. It generate Allure, HTML and JSON reporters as well. It also generate `screen shots` for your tests if you enable it and also generate `error shots` for your failed test cases as well.

### Installation (pre-requisites)
1. JDK 1.8+ (make sure Java class path is set)
2. Maven (make sure .m2 class path is set)
3. intellij idea
4. intellij idea Plugins for
    - Maven
    - Cucumber
5. Browser driver (make sure you have your desired browser driver and class path is set)

### Framework set up
Fork / Clone repository from [here](https://github.com/ShammikaDahanayaka/factorial-Test) or download zip and set it up in your local workspace.

### Run Some Sample Tests
Open terminal (MAC OSX) or command prompt / power shell (for windows OS) and navigate to the project directory
type `mvn clean test` command to run features. With this command it will invoke the default Firefox browser and will execute the tests.

- To run features on specific browser use, `mvn test "-Dbrowser=browser_name"`
Ex: `mvn test "-Dbrowser=chrome"`

Please note that browser drivers are not included as part of this framework. The reason for not including is that selenium browser driver version are varies based on the browser version that you are using and also selenium server version.

- To run specific feature if you have multiple feature files use,
`mvn test -Dcucumber.options="classpath:features/testFactorial.feature"`

### Reporters
Once you ran your tests you can generate the various types of reports. This framework `selenium-cucumber-java` uses several different types of test reporters to communicate pass/failure.

##### Allure Report:
You can generate a report using one of the following command.
- `mvn allure:serve`

Report will be generated into temp folder. Web server with results will start appearing in your default browser. This is very handy if you are running test in CI/CD environment and wants to access the execution report. Note: If your default browser is IE, Allure repots does not appear due to the style sheet compatibility issue. To get rid of this problem you can use any other browser as a default browser or copy the Allure report url from the IE browser and use it in any other browser. A typical Allure report will look like this

![ScreenShot](https://github.com/allure-framework/allure2/blob/master/.github/readme-img.png)

- `mvn allure:report`

Report will be generated tо directory: `target/site/allure-maven/index.html` and you can view it locally.

##### HTML Report:
To generate HTML report use  `mvn test -Dcucumber.options="–plugin html:target/result.html"`

##### JSON Report:
To generate a JSON report Use `mvn test -Dcucumber.options="–plugin json:target/result.json"`

### Develop automation scripts using BDD approach - Cucumber-Java
There are already many predefined StepDefinitions which is packaged under `/stepdefinitions/PredefinedStepDefinitions.java` will help you speed up your automation development that support both your favorite workaday helpers methods.

More about Gherkin & Cucumber can be found at https://cucumber.io/docs/reference A typical test will look similar to this:

```
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
```

### The Page Object Design Pattern
Within your web app's UI there are areas that your tests interact with. A Page Object simply models these as objects within the test code. This reduces the amount of duplicated code and means that if the UI changes, the fix need only be applied in one place. In other wards one of the challenges of writing test automation is keeping your [selectors] (classes, id's, or xpath' etc.) up to date with the latest version of your code. The next challenge is to keep the code you write nice and `DRY (Don't Repeat Yourself)`. The page object pattern helps us accomplish this in one solution. Instead of including our selectors in our step definitions(in cucumber) we instead place them in a <pagename>.java file where we can manage all these selectors and methods together. Your test file should only call the test methods.

# factorial-Test
