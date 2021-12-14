# NewsApp

Project to perform CRUD in a news environment, post news, edit, delete, show, all the good stuff.  
It includes Active Admin so you can perform CRUD in an admin platform.

# Try it

If you want to try it you should have:

-RVM installed (https://rvm.io/rvm/install) for managing Ruby, Ruby on Rails, Gem install.  
-Node.js (https://nodejs.org/es/).  
-Yarn (https://yarnpkg.com/getting-started/install).  
-PostgreSQL (https://www.postgresql.org/download/).

After cloning repo, first make sure you have PostgreSQL up and running, create a role and password and put it in an env variable (could be .bashrc in Ubuntu).  
Names are "PG_USER" for username and "PG_PWD" for password.  
Cd into the folder, run "rails db:migrate", then "rails webpacker:install", and it should be OK to start.

To start server, just execute the command "rails s" and it will initialize.

If you want to use Google Auth you need API Keys from console.cloud.google.com, then put CLIENT_ID and CLIENT_SECRET in your env variable as "CLIENT_ID" and "CLIENT_SECRET".
