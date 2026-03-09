Scenario: Navigate to the website homepage
Given I am on main application page
When I navigate to Homepage
Then `${current-page-url}` is equal to `https://www.saucedemo.com/`
When I take screenshot


Scenario: Log in as a Good User
Given I am on main application page
When I navigate to Homepage
When I login as a user with username `${swagGoodUserName}` and password `${swagPassword}`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
And number of elements found by `xpath(//*[@data-test='inventory-item'])` is equal to `6`
When I take screenshot

Scenario: Log in as a Locked User
Given I am on main application page
When I navigate to Homepage
When I login as a user with username `${swagLockedUserName}` and password `${swagPassword}`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/`
And number of elements found by `xpath(//*[@data-test='error-button'])` is equal to `1` 
When I take screenshot

Scenario: Log in as a Broken User
Given I am on main application page
When I navigate to Homepage
When I login as a user with username `${swagBrokenUserName}` and password `${swagPassword}`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
And number of elements found by `xpath(//*[@data-test='inventory-item'])` is equal to `6`
When I take screenshot

Scenario: Log in as a Slow User
Given I am on main application page
When I navigate to Homepage
When I login as a user with username `${swagSlowUserName}` and password `${swagPassword}`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
And number of elements found by `xpath(//*[@data-test='inventory-item'])` is equal to `6`
When I take screenshot