﻿Feature: PokerHands
	In order to build a superb online poker casino
	As the program developer
	I want to be able to compare 2 poker hands

#=================================================================================================================
# Straight flush tests
Scenario: Straight Flush. Given a low straight flush and a high straight flush dealt to players Black and White
	Given the hand dealt to Black is '4S 5S 6S 7S 8S'
	And the hand dealt to White is  '9C TC JC QC KC'
	When I compare the hands
	Then the comparison result is 'White wins - straight flush'

Scenario: Given a high straight flush and a low straight flush dealt to players Black and White
	Given the hand dealt to Black is '8S 9S TS JS QS'
	And the hand dealt to White is  '4D 5D 6D 7D 8D'
	When I compare the hands
	Then the comparison result is 'Black wins - straight flush'

Scenario: Given a 4 of a kind hand and a straight flush dealt to players Black and White
	Given the hand dealt to Black is '2H 2D 2S 2C KD'
	And the hand dealt to White is  '4C 5C 6C 7C 8C'
	When I compare the hands
	Then the comparison result is 'White wins - straight flush'

Scenario: Given a 2 equal straight flushes dealt to players Black and White
	Given the hand dealt to Black is '4D 5D 6D 7D 8D'
	And the hand dealt to White is  '4C 5C 6C 7C 8C'
	When I compare the hands
	Then the comparison result is 'Tie'

#=================================================================================================================
# Four of a kind tests	
Scenario: Given a high 4 of a kind and a low 4 of a kind dealt to players Black and White
	Given the hand dealt to Black is 'KH KS KC KD 2C'
	And the hand dealt to White is  '3H 3S 3C 3D 8S'
	When I compare the hands
	Then the comparison result is 'Black wins - four of a kind'

Scenario: Given an Ace high and a 4 of a kind dealt to players Black and White
	Given the hand dealt to Black is 'AH 2S KC 4D 6S'
	And the hand dealt to White is  '2C 7H 7S 7C 7D'
	When I compare the hands
	Then the comparison result is 'White wins - four of a kind'

Scenario: Given a low 4 of a kind and a high 4 of a kind dealt to players Black and White
	Given the hand dealt to Black is '5H 5S 5C 5D 9S'
	And the hand dealt to White is  'AH AS AC AD 6C'
	When I compare the hands
	Then the comparison result is 'White wins - four of a kind'

#=================================================================================================================
# Full house tests
Scenario: Given a high card hand and a full house dealt to players Black and White
	Given the hand dealt to Black is '6H 3D AH 2D 5C'
	And the hand dealt to White is  '8H 8D 8C KD KH'
	When I compare the hands
	Then the comparison result is 'White wins - full house'

Scenario: Given a full house and a high card hand dealt to players Black and White
	Given the hand dealt to Black is '4H 4D 4C 6D 6H'
	And the hand dealt to White is  '2H 3D KC QD AH'
	When I compare the hands
	Then the comparison result is 'Black wins - full house'

#=================================================================================================================
# Straight tests
Scenario: Given a high card hand, and a straight, dealt to players Black and White
	Given the hand dealt to Black is '2H 3D 5S 9C AD'
	And the hand dealt to White is  'AC 2D 3S 4C 5H'
	When I compare the hands
	Then the comparison result is 'White wins - straight'

#=================================================================================================================
# High card tests	
Scenario: Given 2 high card hands, king high, and ace high, dealt to players Black and White
	Given the hand dealt to Black is '2H 3D 5S 9C KD'
	And the hand dealt to White is  '2C 3H 4S 8C AH'
	When I compare the hands
	Then the comparison result is 'White wins - with high card: Ace'

Scenario: Given 2 high card hands, ace high, and king high, dealt to players Black and White
	Given the hand dealt to Black is '2C 3H 4S 8C AH'
	And the hand dealt to White is  '2H 3D 5S 9C KD'
	When I compare the hands
	Then the comparison result is 'Black wins - with high card: Ace'

Scenario: Given a high card and a flush dealt to players Black and White
	Given the hand dealt to Black is '2H 4S 4C 2D 4H'
	And the hand dealt to White is  '2S 8S AS QS 3S'
	When I compare the hands
	Then the comparison result is 'White wins - flush'




