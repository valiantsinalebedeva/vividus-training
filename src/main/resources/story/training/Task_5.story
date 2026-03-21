Scenario: Navigate to the website homepage
When I navigate to Homepage
Then `${current-page-url}` is equal to `https://www.saucedemo.com/`
When I take screenshot

Scenario: Log in as a User
When I navigate to Homepage
When I login as a user with username `${swagLockedUserName}` and password `${swagPassword}`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
And number of elements found by `xpath(//*[@data-test='inventory-item'])` is equal to `6`
When I take screenshot
