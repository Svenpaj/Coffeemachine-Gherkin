Feature: Black coffee without milk

  Scenario: Buying one small cup of black coffee
    Given I have put one dollar in the machine
    When I press the black coffee
    And I choose cup size small
    And I choose no milk
    And I choose no sugar
    Then The machine fills one small cup with black coffee

  Scenario: Buying one medium cup of black coffee
    Given I have put two dollars in the machine
    When I press the black coffee
    And I choose cup size medium
    And I choose no milk
    And I choose no sugar
    Then The machine fills one medium cup with black coffee

  Scenario: Buying one large cup of black coffee
    Given I have put three dollars in the machine
    When I press the black coffee
    And I choose cup size large
    And I choose no milk
    And I choose no sugar
    Then The machine fills one large cup with black coffee


Feature: Black coffee with milk

  Scenario: Buying one small cup of black coffee with milk
    Given I have put one dollar in the machine
    When I press the black coffee
    And I choose cup size small
    And I choose yes milk
    And I choose no sugar
    Then The machine fills one small cup with black coffee with milk

  Scenario: Buying one medium cup of black coffee with milk
    Given I have put two dollars in the machine
    When I press the black coffee
    And I choose cup size medium
    And I choose yes milk
    And I choose no sugar
    Then The machine fills one medium cup with black coffee with milk

  Scenario: Buying one large cup of black coffee with milk
    Given I have put three dollars in the machine
    When I press the black coffee
    And I choose cup size large
    And I choose yes milk
    And I choose no sugar
    Then The machine fills one large cup with black coffee with milk

  Scenario: Buying a coffe when there is no more milk left
    Given There is no more milk in the tank
    Then The machine should say milk is empty please refill


Feature: Coffee with milk and sugar

  Scenario: Buying one small cup of black coffee with milk and sugar
    Given I have put one dollar in the machine
    When I press the black coffee
    And I choose cup size small
    And I choose yes milk
    And I choose yes sugar
    Then The machine fills one small cup with black coffee with milk and sugar

  Scenario: Buying one medium cup of black coffee with milk and sugar
    Given I have put two dollars in the machine
    When I press the black coffee
    And I choose cup size medium
    And I choose yes milk
    And I choose yes sugar
    Then The machine fills one medium cup with black coffee with milk and sugar

  Scenario: Buying one large cup of black coffee with milk and sugar
    Given I have put three dollars in the machine
    When I press the black coffee
    And I choose cup size large
    And I choose yes milk
    And I choose yes sugar
    Then The machine fills one large cup with black coffee with milk and sugar

  Scenario: Buying a coffe when there is no more milk left
    Given There is no more milk in the tank
    Then The machine should say milk is empty please refill
    
  Scenario: Buying a coffe when there is no more sugar left
    Given There is no more sugar
    When I press the black coffee
    And I choose cup size large
    And I choose yes milk
    And I choose yes sugar
    Then The machine should say there is no more sugar available, would you like your coffee without sugar? yes/no

Feature: The milksteamer

  Scenario: The milksteamer is cloged or needs to be cleaned
    Given I have put in one dollar in the machine
    When I choose caffe latte or cappucino
    Then The machine should display milksteamer needs to be cleaned. And ask the payer to contact support or choose another coffee or refund

Feature: Coffee grounds

  Scenario: The coffee grounds container is full
    Given The coffee grounds container is full
    Then The machine should display coffee grounds container is full. Please empty

Feature: Paid to little

  Scenario: The customer tries to get a more expensive coffee than what is currently paid
    Given I have paid one dollar
    And I choose a large cappucino
    When Machine askes for the remaining cost
    And I do not pay the remaining
    And I do not change to a coffee within the payed amount
    Then The machine does nothing

Feature: Paid to much

  Scenario: The customer puts in too much money
    Given I have put in five dollars
    And I choose a large black coffee
    When The machine is done with the coffee
    Then the machine should ask if you want more coffee och refund current available sum


Feature: There is no more beans in the mill
  
  Scenario: Buying a coffe when there is no more beans left
    Given There are no more beans in the mill
    Then The machine should say out of beans please refill
