# Automation priority: null
# Test case importance: Low
# language: en
Feature: BDD-OK-JDD

	Scenario Outline: BDD-OK-JDD
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told <answer>

		@KO
		Examples:
		| answer |
		| "Nope" |

		@OK
		Examples:
		| answer |
		| "Yep" |