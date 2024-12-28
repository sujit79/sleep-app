# Sleep App
Sleep App, To run the app checkout github sleep-app project at https://github.com/sujit79/sleep-app.git
goto the sleep-app folder and Ruby Version >= 3.3.6 for Upgrade needed for Dependabot Findings. Use snap
to install ruby 3.3.6 on Linux.

A minor finding first time if the application has the project open, it might need to closed and below steps.

	1. bundle install 
	2. rake db:migrate RAILS_ENV=development 
	3. rails s 
	
# Design Decision
Use Scaffolding provided to generate the skeleton design and code, modify the Controller to return the
specified last week records sorted as descending to the time it was recored.

# How to use the app
On Browser go to 

	http://localhost:3000/users#create to create users
	http://localhost:3000/users#list to list users 
	http://localhost:3000/user_associations#create to create user associations 
	http://localhost:3000/user_sleeps#create to create user sleep changes 	
	http://localhost:3000/user_sleeps#list to list users who have recorded last week as descending 

# Few REST(GET/POST) Interface for the user app 

	localhost:3000/users.json to list 
	localhost:3000/users/1.json to get a particular user 
	localhost:3000/user_associations.json to get user associations 
	localhost:3000/user_sleeps.json to list users last week in descending

 Similar REST(GET/POST) interfaces exist for UserAssociations and UserSleep. 

 # Rails Commands used to generate a part of the project are below, 

 	rails new sleep-app 
 	rails d scaffold User 
 	rails g scaffold User user_name:string 
 	rails g model User user:string 
 	rails g scaffold UserAssociation associated_user_id:integer user:references 
 	rails g scaffold UserSleep user_id:integer user:references

    Furthur documentation https://guides.rubyonrails.org/v3.2/getting_started.html
 
 # Improvements

 The App can be furthur be enhanced to follow semantics, structuring and type definition in terms of object to 
 understand business requirements where in the model/views and database should be enhanced.
 
 # Suggestions 

 Findout ways to integrate Ruby code with other Gems which are non standard using scaffolding. Suggested approach
 is to look into the Ruby on Rails documentation and how templating is working.
 
 https://guides.rubyonrails.org/generators.html

 # UI Interfaces

It is possible to use IFrames or the HTML or JSON output from backend, Highly compatible for usage with modern
Frameworks like Angular/React or any other including Mobile (Flutter for exampe), because of static nature in the
outputs. Any user feedback is welcome.

> [!WARNING]  
>The Below warning will go away when the project is upgraded to rails 8.0 <br/>
>DEPRECATION WARNING: ActiveSupport::ProxyObject is deprecated and will be removed in Rails 8.0.
>Use Ruby's built-in BasicObject instead.
> (called from <main> at C:/project/sentiment/sleep-app/config/application.rb:7)
>DEPRECATION WARNING: ActiveSupport::ProxyObject is deprecated and will be removed in Rails 8.0.
>Use Ruby's built-in BasicObject instead.
>(called from <main> at C:/project/sentiment/sleep-app/config/application.rb:7)
