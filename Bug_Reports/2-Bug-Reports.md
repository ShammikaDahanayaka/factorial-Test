<!-- 
This is the bug identifications during the testing of simple application to determine the factorial of a number.
http://qainterview.pythonanywhere.com/
-->
#### [Calculation Factorial] Answer field can not reset


#### Steps to reproduce 
1. Enter '1' in the text field of 'Enter an integer'
2. Click Calculate! button and check the answer
3. Enter '-1' in the text field of 'Enter an integer'
4. Click Calculate! button


#### Current behaviour (bug)
The application is still showing the previous answer. Answer field is keeping same.


#### Expected behaviour (correct)
The answer field should be reset for -1 calculation. And proper error message should return.


#### Relevant logs and/or media (optional)
![ScreenShot](Bug_screenshots/answerFieldNotReset.png)

#### Other comment (optional)



#### Reported by
ShammikaD

