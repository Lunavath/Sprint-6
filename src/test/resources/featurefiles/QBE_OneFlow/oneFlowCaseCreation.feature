Feature: Case workflow management

  #Author: baburao.lunavath@qbe.com
  #USer Stroy Discription: Ability to provide user portal to QA
  #epic GWMS-80
  #Sprint 6
  #Test case coverage || Total TC's - 12 || Total automated TC's - 12
  @smoke
  Scenario Outline: Ability to provide user portal to QA
    Given Open the browser and navigate to particular url
    When I enter valid username  "<username>" and "<password>" click on Login button
    Then Login should be successfully completed
    Then verify Menu on the left pane view should include based on user "<userportal>"
    Then click on logout link and close the browser

    Examples: 
      | username  | password    | userportal |
      | triager   | Password123 | triager    |
      | Qauser123 | OF@123456   | qauser     |
