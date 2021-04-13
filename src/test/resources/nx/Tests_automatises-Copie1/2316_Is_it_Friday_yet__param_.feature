# Automation priority: null
# Test case importance: Low
# language: en
Feature: Is it Friday yet (param)

	Scenario Outline: Is it Friday yet (param)
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told <answer>

		@ko
		Examples:
		| answer |
		| "Yep" |

		@ok
		Examples:
		| answer |
		| "Nope" |