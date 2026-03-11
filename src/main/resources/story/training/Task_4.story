Scenario: Navigate to the website homepage
When I navigate to Homepage
Then `${current-page-url}` is equal to `https://www.saucedemo.com/`
When I ${baselineAction} baseline with name `HomePage`


Scenario: Log in as a User
When I navigate to Homepage
When I login as a user with username `${swagBrokenUserName}` and password `${swagPassword}`
Then `${current-page-url}` is equal to `https://www.saucedemo.com/inventory.html`
And number of elements found by `xpath(//*[@data-test='inventory-item'])` is equal to `6`
When I ${baselineAction} baseline with name `LoginPage` ignoring:
|ELEMENT		|ACCEPTABLE_DIFF_PERCENTAGE	|
|By.xpath(//*[@class='inventory_item_img'])	|25				|