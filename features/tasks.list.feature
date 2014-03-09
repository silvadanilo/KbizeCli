Feature: Login
    In order to access to api
    I need to fetch / use a Kanbanize generated token

    Scenario: Project and Board are not requested if they are passed as command options
        Given I am an authenticated user
        When I want to view tasks list
        And I use the option "--project 1"
        And I use the option "--board 2"
        Then I should view in the output "The Task Title"

    Scenario: I should view only mine tasks if --mine is passed as command option
        Given I am an authenticated user
        When I want to view tasks list
        And I use the option "--project 1"
        And I use the option "--board 2"
        And I use the option "--own"
        Then I should view in the output "name.surname"
        Then I should not view in the output "paolo.rossi"
