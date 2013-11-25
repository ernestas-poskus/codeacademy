Using OAuth
In most websites, you need to log in before you can do anything.
login

With APIs, you log in through a special system called OAuth. 
Instead of using a username and password, you send a special string called an access_token. 
Normally there's additional work to be done with OAuth, but Codecademy's doing the heavy lifting for you behind the scenes!


oauth_header = {:authorization => "Bearer " << "ACCESS_TOKEN"}