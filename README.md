# sleep-app
Sleep App, To run the app checkout github sleep-app project at https://github.com/sujit79/sleep-app.git
goto the sleep-app folder and <br />
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

	localhost:3000/users.json to list
	localhost:3000/users/1.json to get a particular user
	localhost:3000/user_associations.json to get user associations
	localhost:3000/user_sleeps.json to list users last week in descending

 # Rails Commands used to generate the project are below, 

 rails new sleep-app <br />
 rails d scaffold User <br />
 rails g scaffold User user_name:string <br />
 rails g model User user:string <br />
 rails g scaffold UserAssociation associated_user_id:integer user:references <br />
 rails g scaffold UserSleep user_id:integer user:references <br />

 # Improvements

 The App can be furthur be enhanced to follow semantics, structuring and type definition in terms of object to 
 understand business requirements where in the model/views and database should be enhanced.
 
 # Suggestions 

 Findout ways to integrate Ruby code with other Gems which are non standard using scaffolding. Suggested approach
 is to look into the Ruby on Rails documentation and how templating is working.
 
 https://guides.rubyonrails.org/generators.html
