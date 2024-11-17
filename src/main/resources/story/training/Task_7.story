Meta:
    @group Training
    @requirementId MyTask-0007


Scenario: Navigate to the website homepage
When I open main application page


Scenario: Log In
When I login with ${userName} and ${password}


Scenario: Add item to the shopping cart
When I click on element located by `xpath(//*[text()='<itemName>'])`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory-item.html?id=<itemPageId>`
When I click on element located by `By.id(<addToCartButtonId>)`
When I click on element located by `id(back-to-products)`
Examples:
|addToCartButtonId|itemName	              |itemPageId|
|add-to-cart     |Sauce Labs Bike Light  |0         |
|add-to-cart    |Sauce Labs Bolt T-Shirt|1         |
|add-to-cart   |Sauce Labs Onesie      |2         |


Scenario: Populate checkout data
When I click on element located by `xpath(//span[@class='shopping_cart_badge'])`
When I click on element located by `id(checkout)`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/checkout-step-one.html`
When I enter `#{generate(Name.firstName)}` in field located by `id(first-name)`
When I enter `#{generate(regexify '[A-Z]{5}[a-z]{4}')}` in field located by `id(last-name)`
When I enter `#{generate(regexify '[A-Z]{3}-[0-9]{5}')}` in field located by `id(postal-code)`
When I take screenshot


Scenario: Complete checkout process
When I click on element located by `id(continue)`
When I click on element located by `id(finish)`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/checkout-complete.html`
When I save text of element located by `xpath(//h2[@class='complete-header'])` to SCENARIO variable `thankYouMessage`
Given I initialize SCENARIO variable `expectedMessage` with value `#{loadResource(/data/message.txt)}`
Then `#{eval(thankYouMessage == expectedMessage)}` is equal to `true`
