GivenStories: story/demo/Homepage_Demo.story

Scenario: Login to the SauceDemo website
Given I am on the SauceDemo login page
When I enter `standard_user` in field located `//*[@id="user-name"]` using keyboard
And I enter `secret_sauce` in field located `//*[@id="password"]` using keyboard
Then the "Products" page should be loaded
And I should see 6 inventory items
When I take a screenshot
