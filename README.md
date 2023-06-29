# sleep-app
Sleep App, To run the app checkout github sleep-app project at https://github.com/sujit79/sleep-app.git
goto the sleep-app folder and 
	1. bundle install <br />
	2. rake db:migrate RAILS_ENV=development <br />
	3. rails s <br />
	
# Design Decision
Use Scaffolding provided to generate the skeleton design and code, modify the Controller to return the
specified last week records sorted as descending to the time it was recored.

# How to use the app
On Browser go to <br />
	http://localhost:3000/users#create to create users <br />
	http://localhost:3000/users#list to list users <br />
	http://localhost:3000/user_associations#create to create user associations <br />
	http://localhost:3000/user_sleeps#create to create user sleep changes <br />	
	http://localhost:3000/user_sleeps#list to list users who have recorded last week as descending <br />	

# REST(GET) Interface for the user app <br />

	localhost:3000/users.json to list  <br />
	localhost:3000/users/1.json to get a particular user <br />
	localhost:3000/user_associations.json to get user associations <br />
	localhost:3000/user_sleeps.json to list users last week in descending <br />


