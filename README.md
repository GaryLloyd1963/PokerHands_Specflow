Poker Hands with Specflow Testing
=================================

This small project illustrates the use of Specflow tests on a traditional Dojo-Kata exercise "Poker Hands",
source : http://codingdojo.org/cgi-bin/index.pl?KataPokerHands

Tech stack - C#, VS2015, Nunit 2.6.4, Specflow 1.9.0

Notes: For simplicity I've not used mockng or unit tests, this is mainly to show the use of SpecFlow
for acceptance testing. The tests should be run from VS (the program.cs does nothing currently).

###Files to note

SpecFlow tests : https://github.com/GaryLloyd1963/PokerHands_Specflow/blob/master/src/Tests.Acceptance/PokerHandsAcceptance.feature

Small set of test steps : https://github.com/GaryLloyd1963/PokerHands_Specflow/blob/master/src/Tests.Acceptance/PokerHandsSteps.cs

Main hand comparer : https://github.com/GaryLloyd1963/PokerHands_Specflow/blob/master/src/PokerHands_Specflow/PokerHandsComparer.cs

Hand evaluator (with interface): https://github.com/GaryLloyd1963/PokerHands_Specflow/blob/master/src/PokerHands_Specflow/HandEvaluator.cs
 
##Problem Description 

Your job is to compare several pairs of poker hands and to indicate which, if either, has a higher rank. 

##Poker rules description 

A poker deck contains 52 cards - each card has a suit which is one of clubs, diamonds, hearts, or spades (denoted C, D, H, and S in the input data). Each card also has a value which is one of 2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace (denoted 2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A). For scoring purposes, the suits are unordered while the values are ordered as given above, with 2 being the lowest and ace the highest value. 

A poker hand consists of 5 cards dealt from the deck. Poker hands are ranked by the following partial order from lowest to highest. 


* High Card: Hands which do not fit any higher category are ranked by the value of their highest card. If the highest cards have the same value, the hands are ranked by the next highest, and so on. 
* Pair: 2 of the 5 cards in the hand have the same value. Hands which both contain a pair are ranked by the value of the cards forming the pair. If these values are the same, the hands are ranked by the values of the cards not forming the pair, in decreasing order. 
* Two Pairs: The hand contains 2 different pairs. Hands which both contain 2 pairs are ranked by the value of their highest pair. Hands with the same highest pair are ranked by the value of their other pair. If these values are the same the hands are ranked by the value of the remaining card. 
* Three of a Kind: Three of the cards in the hand have the same value. Hands which both contain three of a kind are ranked by the value of the 3 cards. 
* Straight: Hand contains 5 cards with consecutive values. Hands which both contain a straight are ranked by their highest card. 
* Flush: Hand contains 5 cards of the same suit. Hands which are both flushes are ranked using the rules for High Card. 
* Full House: 3 cards of the same value, with the remaining 2 cards forming a pair. Ranked by the value of the 3 cards. 
* Four of a kind: 4 cards with the same value. Ranked by the value of the 4 cards. 
* Straight flush: 5 cards of the same suit with consecutive values. Ranked by the highest card in the hand. 

##Example Specflow Test
>**Scenario**: Given a 4 of a kind hand and a straight flush dealt to players Black and White

>**Given** the hand dealt to Black is '2H 2D 2S 2C KD'

>**And** the hand dealt to White is  '4C 5C 6C 7C 8C'

>**When** I compare the hands

>**Then** the comparison result is 'White wins. - straight flush'

