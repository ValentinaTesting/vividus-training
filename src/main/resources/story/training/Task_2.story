GivenStories: story/demo/Homepage_Demo.story

Scenario: Login in as a Good User
Given I am on main application page
When I enter `$standard_user` in field located `//*[@id="user-name"]` using keyboard
And I enter `$secret_sauce` in field located `//*[@id="password"]` using keyboard
Then the "Products" page should be loaded
And I should see 6 inventory items
When I take a screenshot
