# feature/register.feature


Feature: Register
  As a potential member
  So that can see information about movies that interest me
  I want register for the RottenPotatoes application
  
Background: profiles in databasea

  Given the following profiles exists:
  | primary_language|secondary_language|favorite_movie|worst_movie|favorite_genre|user_id|
  | English         | Music            | Blade Runner |Ishtar     |SciFi         |       |    

  
@omniauth_test1
Scenario: Register
  Given I am on the RottenPotatoes Landing Page
  And I press "Register with GitHub"
  And I will see "Welcome Tester Suny! You have signed up via GitHub."
  Then I am on the RottenPotatoes edit Profile page for 'Tester SUNY'
   

@omniauth_test2
Scenario:  Can't Register without SUNY ID
  Given I am on the RottenPotatoes Landing Page
  And I press "Register with GitHub"
  Then I should see message "Only Students and Staff belonging to SUNY Binghamton can register for this app"