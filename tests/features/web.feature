Feature: DuckDuckGo Web Browsing

    As a browser user,
    I want to find infomration online,
    So i can learn new things.

    Background:
        Given the DuckDuckGo home page is displayed

    Scenario: Basic DDG search
        When the user searches for "panda"
        Then results are shown for "panda"

    Scenario: Long DDG search
        When the user searches for the phrase:
            """ When in the Course of human events,
            it becomes necessary for one people to dissolve the political bands which have connected them with another,
            and to assume among the powers of the earth, the separate and equal
            station to which the Laws of Nature and of Nature's God entitle them,
            a decent respect to the opinions of mankind requires that they should
            declare the causes which impel them to the separation.
            """
        Then one of the results contains "Declaration of Independence"