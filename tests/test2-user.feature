@fast @user-steps @test

Feature: Running Cucumber with TestCafe - test "user ..." steps feature 2
  As a user of TestCafe
  I should be able to use Cucumber
  to run my e2e tests

  Scenario: 'user logs in with l: and p: and clicks' should show credentials that were submitted for logging in
    Given user goes to "test2-page"."pageTest2"
    When user logs in with l: "testUser" in "test2-page"."inputUsername" and p: "1111" in "test2-page"."inputPassword" and clicks "test2-page"."buttonLogin"
    Then blockCredentials from test2-page text should be "testUser1111"

  Scenario: 'user logs in with l: and p: and clicks' should show credentials that were submitted for logging in (text style step)
    Given user goes to "test2-page"."pageTest2"
    When user logs in with l: "testUser" in inputUsername from test2-page and p: "1111" in inputPassword from test2-page and clicks buttonLogin from test2-page
    Then blockCredentials from test2-page text should be "testUser1111"

  Scenario: 'user logs in with l: and p: and clicks' should show credentials that were submitted for logging in (Page Object style step)
    Given user goes to "test2-page"."pageTest2"
    When user logs in with l: "test2-page"."loginTest2" in "test2-page"."inputUsername" and p: "test2-page"."passwordTest2" in "test2-page"."inputPassword" and clicks "test2-page"."buttonLogin"
    Then blockCredentials from test2-page text should be "testUser1111"

  Scenario: 'user logs in with l: and p: and clicks' should show credentials that were submitted for logging in (text style step)
    Given user goes to "test2-page"."pageTest2"
    When user logs in with l: loginTest2 from test2-page in inputUsername from test2-page and p: passwordTest2 from test2-page in inputPassword from test2-page and clicks buttonLogin from test2-page
    Then blockCredentials from test2-page text should be "testUser1111"

  Scenario: 'user moves to' element should trigger its hovered state, 'text should contain' should verify the text
    When user goes to URL "http://localhost:8001/test1.html"
    And user moves to "test-page"."titleTest1"
    Then "test-page"."blockTextTest" text should contain "test-page"."txtTest1"

  Scenario: 'user moves to' element should trigger its hovered state, 'text should contain' should verify the text (text style step)
    When user goes to URL "http://localhost:8001/test1.html"
    And user moves to titleTest1 from test-page
    Then blockTextTest from test-page text should contain txtTest1 from test-page

  Scenario: 'user moves to with an offset' should trigger element's hovered state
    When user goes to URL "http://localhost:8001/test1.html"
    And user moves to "test-page"."titleTest1" with an offset of x: 10px, y: 5px
    Then "test-page"."blockTextTest" text should contain "test-page"."txtTest1"

  Scenario: 'user moves to with an offset' should trigger element's hovered state (text style step)
    When user goes to URL "http://localhost:8001/test1.html"
    And user moves to titleTest1 from test-page with an offset of x: 10px, y: 5px
    Then "test-page"."blockTextTest" text should contain "test-page"."txtTest1"

  Scenario: 'user switches to' iframe should change the context to this iframe
    When user goes to URL "http://localhost:8001/test-iframe.html"
    And user switches to "iframe-page"."iframeTest1Page" frame
    Then "test-page"."linkTest2Page" should be present

  Scenario: 'user switches to' iframe should change the context to this iframe (text style step)
    When user goes to URL "http://localhost:8001/test-iframe.html"
    And user switches to iframeTest1Page frame from iframe-page
    Then "test-page"."linkTest2Page" should be present

  Scenario: 'user switches to main frame' should change the context back to the main page
    When user goes to URL "http://localhost:8001/test-iframe.html"
    And user switches to "iframe-page"."iframeTest1Page" frame
    Then "test-page"."linkTest2Page" should be present
    And user switches to main frame
    And "test-page"."linkTest2Page" should not be present

  Scenario: 'user executes function' should change the content on the page
    Given user goes to URL "http://localhost:8001/test1.html"
    When user executes "test2-page"."updateText" function
    Then "test-page"."blockTextTest" text should contain "Text to test script execution"

  Scenario: 'user executes function' should change the content on the page (text style step)
    Given user goes to URL "http://localhost:8001/test1.html"
    When user executes updateText function from test2-page
    Then "test-page"."blockTextTest" text should contain "Text to test script execution"

  Scenario: 'user accepts further browser alerts' should get the alert accepted
    Given user goes to URL "http://localhost:8001/test-alert.html"
    When user accepts further browser alerts
    And user clicks "alert-page"."buttonLaunchAlert"
    Then "alert-page"."blockAlertStatus" text should be "alert-page"."textAlertAccepted"

  Scenario: 'user dismisses further browser alerts' should get the alert canceled
    Given user goes to URL "http://localhost:8001/test-alert.html"
    When user dismisses further browser alerts
    And user clicks "alert-page"."buttonLaunchAlert"
    Then "alert-page"."blockAlertStatus" text should be "alert-page"."textAlertCanceled"

  Scenario: 'user presses' should press the specified keyboard keys
    Given user goes to URL "http://localhost:8001/test2.html"
    And user types "Text is 12" in "test2-page"."inputColors"
    And user clicks "test2-page"."inputColors"
    When user presses "home right right right right delete delete delete"
    Then "test2-page"."blockInputColor" text should be "Text 12"

  Scenario: 'URL should be' should verify that current URL equals provided string
    Given user goes to URL "http://localhost:8001/test1.html"
    Then URL should be "http://localhost:8001/test1.html"

  Scenario: 'URL should be' should verify that current URL equals provided string (Page Object style step)
    Given user goes to URL "http://localhost:8001/test1.html"
    Then URL should be "test2-page"."test1Url"

  Scenario: 'URL should be' should verify that current URL equals provided string (text style step)
    Given user goes to URL "http://localhost:8001/test1.html"
    Then URL should be test1Url from test2-page

  Scenario: 'URL should contain' should verify that current URL contains provided string
    Given user goes to URL "http://localhost:8001/test1.html"
    Then URL should contain "/test1.html"

  Scenario: 'URL should contain' should verify that current URL contains provided string (Page Object style step)
    Given user goes to URL "http://localhost:8001/test1.html"
    Then URL should contain "test2-page"."test1Path"

  Scenario: 'URL should contain' should verify that current URL contains provided string (text style step)
    Given user goes to URL "http://localhost:8001/test1.html"
    Then URL should contain test1Path from test2-page

  Scenario: 'attribute should contain' should verify that the attribute of the element contains provided string
    Given user goes to "test2-page"."pageTest2"
    Then "test2-page"."inputPassword" attribute "type" should contain "password"

  Scenario: 'attribute should contain' should verify that the attribute of the element contains provided string (text style step)
    Given user goes to "test2-page"."pageTest2"
    Then inputPassword from test2-page attribute "type" should contain "password"
