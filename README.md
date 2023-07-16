# sample_app

This app was originally an educational app for Building engineering physics developed during our student project. We have reworked the app so that the app can be used as a kind of sample app. This is our first app that we developed in Flutter and is also not a full app that exists in the play store or app store. 

Made by: Artur Alekseevic Bengardt, Mohamed Tchelebi, Dominic Hagemann


## Features

### Main Features

- **[Firebase](#firebase)**<br>
- **[Folder-Strucre](#folder-structure)**<br>
- **[PDF-Reader and CSV-Table](#pdf-reader-and-csv-table)**<br>
- **[Search feature](#search-feature)**<br>
- **[Quiz feature](#quiz-feature)**<br>
- **[Calculator feature](#calculator-feature)**<br>

### Small features

The app also has the following small feature worth mentioning:

- Expansion Panels for the FAQ Window
- Touchable URL's for linking to a web page
- Navigation bar between windows
- Home button that takes you back to the home window


---
#### Firebase: 
The app is connected to Firebase. The sample app uses the Authentication function here. You can either register with a fantasy email and a 6-digit password or use these login details: 
   - E-Mail: sample@app.de
   - Password: 123456

Using templates in Firebase, you can also reset the password in the app via your email.
The App also have a log-out button.
  
<img src="https://github.com/abengard/flutter-sample-app/blob/master/assets/Images/Login%20%2B%20Reset-Password%20Window.PNG" width="600">

#### Folder structure: 
For sorting individual lectures and homework tasks, which can be structured by topic  

<img src="https://github.com/abengard/flutter-sample-app/blob/master/assets/Images/Folder-%20%2B%20Subfolder%20Window.PNG" width="600">

#### PDF-Reader and CSV-Table:

You can open and read PDF's and CSV tables within the app. 

<img src="https://github.com/abengard/flutter-sample-app/blob/master/assets/Images/PDF-Reader%20%2B%20CSV-Table.PNG" width="800">


#### Search feature

In the code a list with the search terms was stored. This is updated as soon as you type the first letters. 

<img src="https://github.com/abengard/flutter-sample-app/blob/master/assets/Images/Search%20Window.PNG" width="550">

#### Quiz feature:

When you create a quiz you have the choice between single choice and multiple choice. Once a quiz is completed, the result is displayed at the end. The next quiz is unlocked as soon as a certain score is reached. The score can be changed in the code. Currently it is set to 100%.

<img src="https://github.com/abengard/flutter-sample-app/blob/master/assets/Images/Quiz%20Window.PNG" width="530">

#### Calculator feature

This is a special calculator for the subject "building physics". Nevertheless, there are interesting functions in the calculator, which can also be applied to other fields.

- **Step 1:** 
First of all, we have two pop-ups that contain strings. Depending on the selection, the displayed image at the bottom of "Image Display" and the number of dropdowns or text fields in step 2 will change.

- **Step 2:** 
Here we have the choice of dropdown menus or text fields. If you choose dropdowns, they will use the loaded CSV tables and their data. If you choose text fields, you can enter the data freehand. 

- **Step 3:**
Here you have an image for the values, in which you can zoom in and two dropdowns. Depending on the selection of the dropdowns in step 2, the content of the dropdowns in step 3 changes.

- **Step 4:**
Here you have a result field with a button "Calculate" This performs all functions in the calculator and gives a result at the end.


<img src="https://github.com/abengard/flutter-sample-app/blob/master/assets/Images/Calculator%20(building%20physics)%20Window.jpg" width="600">


