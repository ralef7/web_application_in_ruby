# Twatter


Specs: 

Domain Modeling:
 * 5 Database backed models: User, Blog, Post, Comment, Follow
 * Many-to-many model association: Follow 
 * Model validations implemented where necessary
 * seeds file implements users, blogs, posts, comments, and follows

Controllers and Views:
 * Complete RESTful database-backed resource: Blog
 * Site navigation should be common through.  You can access more pages if logged in than not logged in.  This is a convenience and security measure.
 * Usuing BCrypt to secure my passwords.  

Feature Choice:
 * Deployment to a public url through heroku.  
web app deployment url: https://fast-sands-2069.herokuapp.com/
this site should be virtually identical to what's on localhost:3000.  i think i delete a couple things just to make sure they were working, but no users.

Best Practices:

 * Query limits implemented where necessary
 * SQL injection additional protection wasn't necessary
 * Passwords secure with BCrypt
 * Only pages users should be able to access with sensitive data on them are their own pages.  All edit pages have user-specific protection.
 * I had an if in production check in my seeds file (essentially, i wouldn't delete data if my webapp was in production). I had to take it out since I was steadily seeding and re seeding my live deployed app.  