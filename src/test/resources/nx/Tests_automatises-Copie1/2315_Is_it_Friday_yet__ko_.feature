# Automation priority: null
# Test case importance: Low
# language: en
Feature: Is it Friday yet (ko)

	Scenario: Is it Friday yet (ko)
		Given today is Sunday
		When I ask whether it's Friday yet
		Then I should be told "Yep"