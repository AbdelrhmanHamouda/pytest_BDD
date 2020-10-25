from functools import partial
from pytest_bdd import scenarios, parsers, given, when, then
import pytest
from .cucumbers import CucumberBasket

scenarios('../features/cucumbers.feature')

# the dict contains all needed extra types for the tests
EXTRA_TYPES = {
    'Number': int,
}

# use a partial function in order to make calling the steps more redable
parse_num = partial(parsers.cfparse, extra_types=EXTRA_TYPES)


@pytest.fixture()
@given(parse_num('the basket has "{initial:Number}" cucumbers'))
def basket(initial):
    return CucumberBasket(initial_count=initial)


@when("4 cucumbers are added to the basket")
@when(parse_num('"{some:Number}" cucumbers are added to the basket'))
def add_cucumbers(basket, some):
    basket.add(some)


@when(parse_num('"{some:Number}" cucumbers are removed from the basket'))
def remove_cucumbers(basket, some):
    basket.remove(some)


@then(parse_num('the basket contains "{total:Number}" cucumbers'))
def basket_has_total(basket, total):
    assert basket.count == total
