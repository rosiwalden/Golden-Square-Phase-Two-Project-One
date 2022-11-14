# {{PROBLEM}} Method Design Recipe 

## 1. Describe the Problem 

_Put or write the user story here. Add any clarifying notes you might have._

> As a user 
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature 

_Include the name of the method, its parameters, return value, and side effects._

'''
verified = verify_text(text)

* text is a string containing words and punctuation.
* verified is a boolean that will return true if the first letter of text is capitalized and the last character is a suitable punctuation-mark. 
'''

## 3. Create Examples as Tests 

_Make a list of examples of what the method will take and return._

#1
verify_text('Hello!')
# => True

#2
verify_text('hello')
# => False 

#3
verify_text('')
# => False 

#4
verify_text('Hello.world')
# => False 

#5
verify_text('helloworld!')
# => False 

_Encode each example as a test. Youo can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement behaviour._
