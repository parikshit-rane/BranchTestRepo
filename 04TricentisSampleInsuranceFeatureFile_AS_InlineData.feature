Feature: Tricentis Sample Insurance Application
Scenario: Launch Insurance Application
 Given User opens "Insurance Application" with URL as "http://sampleapp.tricentis.com/101/index.php"
 When User Navigates to "Automobile" Page
 Then "Automobile Insurance Page" is displayed successfully
 
Scenario: Enter Vehicle Data
 Given User is on "Enter Vehicle Data Page"
 When user selects "Make" as "Audi" and "Number of Seats" as "5" and "Fuel Type" as "Petrol"
 And user enters "Engine Performance [kW]" as "1000" and "Date of Manufacture" as "12/12/2009" and "List Price [$]" as "25000" and "License Plate Number" as "OBD 3324" and "Annual Mileage [mi]" as "15000"
 And user clicks on "Next »" button
 Then "Enter Insurant Data Page" is displayed successfully
 
Scenario: Enter Insurant Data
 Given user is on "Enter Insurant Data Page"
 When user enters "First Name" as "Geoff" and "Last Name" as "Marshall" and "Date of Birth" as "01/07/1985" and "Street Address" as "10 Downing Street"
 And user clicks on "Male" radio button for gender
 And user selects "Country" as "United Kingdom"
 And user enters "Zip Code" as "SW1A 2AA" and "City" as "London"
 And user selects "Occupation" as "Employee"
 And clicks on "BungeeJumping" check box for hobbies
 And user clicks on "Next »" button
 Then "Enter Product Data Page" is displayed successfully
 
Scenario: Enter Product Data
 Given user is on "Enter Product Data Page"
 When user enters "Start Date" as "20/11/2019"
 And user selects "Insurance Sum [$]" as "10.000.000,00" and "Merit Rating" as "Bonus 4" and "Damage Insurance" as "Full Coverage" and "Courtesy Car" as "Yes"
 And user clicks on "Euro Protection" check box for Optional Products
 And user clicks on "Next »" button
 Then "Select Price Option Page" is displayed successfully
 
Scenario: Select Price Option
 Given user is on "Select Price Option Page"
 When user clicks on "Gold" price option
 And user clicks on "Next »" button
 Then "Send Quote Page" is displayed successfully
 
Scenario: Send Quotes
 Given user is on "Send Quote Page"
 When user enters "E-Mail" as "geoff.marshall@testmail.com" and "Username" as "gmarshall" and "Password" as "Te$t@P@$$w0rd" and "ConfirmPassword" as "Te$t@P@$$w0rd"
 And user clicks on "« Send »" button
 Then "Email Sent" is displayed successfully
