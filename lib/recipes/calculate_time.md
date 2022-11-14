# {{PROBLEM}} Method Design Recipe 

## 1. Describe the Problem 

_Put or write the user story here. Add any clarifying notes you might have._

> As a user 
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature 

_Include the name of the method, its parameters, return value, and side effects._

'''ruby
time = calculate_time(text)

* text is a string, containing words
* time is an integer representing minutes
'''

## 3. Create Examples as Tests 

_Make a list of examples of what the method will take and return._

'''ruby
#1 
calculate_time('')
# => 0

#2
calculate_time('one')
# => 1

#3 
calculate_time(TWO_HUNDRED_WORDS)
# => 1

#4
calculate_time(THREE_HUNDRED_WORDS)
# => 2

#5
calculate_time(FOUR_HUNDRED_WORDS)
# => 2

#6
calculate_time(FIVE_THOUSAND_WORDS)
# => 25
'''

_Encode each example as a test. Youo can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement behaviour._
