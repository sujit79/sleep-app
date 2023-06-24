# sleep-app
Sleep App, To run the app checkout github sleep-app project at https://github.com/sujit79/sleep-app.git
got to the sleep-app folder and run "rails s"

# Design Decision
Use Scaffolding provided to generate the skeleton design and code, modify the Controller to return the
specified last week records sorted as descending to the time it was recored.

#How to use the app
On Browser go to 
	http://localhost:3000/users#create to create users
	http://localhost:3000/users#list to list users who have recorded last week as descending
	http://localhost:3000/user_associations#create to create user associations
	
REST Interface for the user app

localhost:3000/users.json to list users last week in descending
localhost:3000/users/1.json to get a particular user
localhost:3000/user_associations.json to get user associations


