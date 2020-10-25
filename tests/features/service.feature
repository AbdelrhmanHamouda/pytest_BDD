Feature: DuckDuckGo Instant Answer API

    As a software tester,
    I want to check how the API testing thing goesm
    so my testing skills are better

    Scenario Outline: Basic DuckDuckGo API Quer
        Given the DuckDuckGo API is queried with "<phrase>"
        Then the response status code is "200"
        And the response contains results for "<phrase>"

        Examples: Animals
            | phrase   |
            | panda    |
            | python   |
            | platypus |

        Examples: Fruits
            | phrase |
            | peach  |
            | apple  |
            | papaya |