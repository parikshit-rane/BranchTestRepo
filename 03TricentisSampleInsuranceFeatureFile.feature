Feature: Tricentis Sample Insurance Application
Scenario: Launch Insurance Application
 Given User opens "Insurance Application"
 | Insurance Application |
 | http://sampleapp.tricentis.com/101/index.php |
 When User Navigates to "Automobile" Page
 Then "Automobile Insurance Page" is displayed successfully
 
Scenario: Enter Vehicle Data
 Given User is on "Enter Vehicle Data Page"
 When user selects "Make" and "Number of Seats" and "Fuel Type"
 | Make | Number of Seats | Fuel Type |
 | Audi | 5 | Petrol |
 | BMW | 2 | Diesel |
 | Toyota | 4 | Petrol |
 And user enters "Engine Performance [kW]" and "Date of Manufacture" and  "List Price [$]" and "License Plate Number" and "Annual Mileage [mi]"
 | Engine Performance [kW] | Date of Manufacture | List Price [$] | License Plate Number | Annual Mileage [mi] |
 | 600 | 12/12/2009 | 25000 | OBD 3324 | 15000 |
 | 800 | 25/10/2012 | 35000 | OKY 8976 | 13500 |
 | 400 | 30/08/2015 | 21000 | BLO 4000 | 14000 |
 And user clicks on "Next »" button
 Then "Enter Insurant Data Page" is displayed successfully
 
Scenario: Enter Insurant Data
 Given user is on "Enter Insurant Data Page"
 When user enters "First Name" and "Last Name" and "Date of Birth" and "Street Address"
 | First Name | Last Name | Date of Birth | Street Address |
 | Geoff | Marshall | 01/07/1985 | 10 Downing Street |
 And user clicks on "Male" radio button for gender
 And user selects "Country"
 | Country |
 | United Kingdom |
 And user enters "Zip Code" and "City"
 | Zip Code | City |
 | SW1A 2AA | London |
 And user selects "Occupation"
 | Occupation |
 | Employee |
 And clicks on "BungeeJumping" check box for hobbies
 And user clicks on "Next »" button
 Then "Enter Product Data Page" is displayed successfully
 
Scenario: Enter Product Data
 Given user is on "Enter Product Data Page"
 When user enters "Start Date"
 | Start Date |
 | 20/11/2019 |
 And user selects "Insurance Sum [$]" and "Merit Rating" and "Damage Insurance" and "Courtesy Car"
 | Insurance Sum [$] | Merit Rating | Damage Insurance | Courtesy Car |
 | 10.000.000,00 | Bonus 4 | Full Coverage | Yes |
 And user clicks on "Euro Protection" check box for Optional Products
 And user clicks on "Next »" button
 Then "Select Price Option Page" is displayed successfully
 
Scenario: Select Price Option
 Given user is on "Select Price Option Page"
 When user clicks on "Gold" price option
 And user clicks on "Next »" button
 Then "Send Quote Page" is displayed successfully
 
Scenario: Send Quote
 Given user is on "Send Quote Page"
 When user enters "E-Mail" and "Username" and "Password" and "ConfirmPassword"
 | E-Mail | Username | Password | ConfirmPassword |
 | geoff.marshall@testmail.com | gmarshall | Te$t@P@$$w0rd | Te$t@P@$$w0rd |
 And user clicks on "« Send »" button
 Then "Email Sent" is displayed successfully