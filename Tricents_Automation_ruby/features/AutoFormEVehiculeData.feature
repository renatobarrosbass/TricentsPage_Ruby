Feature: Fill out the form in order to complete these fields and 
In order to validate the final message as to complete each session
As a user doing the propose
Wanna validate all the fields for learning as well and showing my skills Automation


Scenario Outline: Enter Vehicle Data - Form 1 Automobile
 Given That user access the form is require your cars informations 
 When input data in field Make "<make>"
 And input data in field Model "<model>"
 And input data in field cylindercapacity "<cylindercapacity>"
 And input data in field Engine Performer "<enginePerformer>"
 And input data in field Date of Manufacture "<dateOfManufacture>"
 And input data in field Number of seats "<numberOfSeats>" 
 And input data in field Righ and Drive
 And input data in field Fuel Type "<fuelType>"
 And input data in field List Price "<listPrice>"
 And input data in field Annual Mileage "<annualMileage>"
 And Press button Next for continue
 And that User input data in first name "<firstname>"
 And input data in field last name "<lastname>"
 And input data in field date of b-day "<dateofbirth>"
 And input data in field Engine Street Adress "<streetaddress>"
 And input data in field Country "<country>"
 And input data in field Zip Code "<zipcode>"
 And input data in field Occupation "<occupation>" 
 And input data in field Hobbies that you have
 And Press button NextEID for continue
 And input data in field Start Date "<startdate>" 
 And input data in field Insurance Sum "<insurancesum>"
 And input data in field Merit Rating "<meritrating>"
 And input data in field Damage Insurance "<damageinsurance>"
 And check data in checkboxes Optional Products
 And input data in field Courtesy Car "<courtesycar>"
 And Press button NextSPO for continue
 And Select the radio-button with the Ultimate value
 And Press button NextQuote for continue
 And input data in field Email "<email>"
 And input data in field Username "<username>"
 And input data in field Password "<password>"
 And input data in field Confirm Password "<confirmpassword>" 
 And Press button Send
 Then Verify the message has been showing "<message>"

 Examples:
 |make |model      |cylindercapacity|enginePerformer|dateOfManufacture|numberOfSeats|fuelType|listPrice|annualMileage|firstname|lastname|dateofbirth|streetaddress|country|zipcode|occupation|startdate |insurancesum |meritrating|damageinsurance|courtesycar|email        |username    |password  |confirmpassword| message              |
 |Honda| Motorcycle|1               |1999           |01/01/2020       |5            |Gas     |10000    |100          |Tester   |QA      |01/01/1978 |rua da praia |Brazil |55000  |Employee  |01/01/2021|25.000.000,00|Malus 17   |Full Coverage  | Yes       | re@re.com.br|renatoTester|123456rR  |123456rR       |Sending e-mail failed!| 