API USAGE

Resource :User

Endpoint:/api/v1/users      Method:Post    Action: new user
Endpoint:/api/v1/users/:id  Method:Get     Action:show user
Endpoint:/api/v1/users/:id  Method:Patch   Action:update user
Endpoint:/api/v1/users/:id  Method:Delete  Action:delete user

Resource :Team

Endpoint:/api/v1/teams     Method:Post    Action:new team
Endpoint:/api/v1/teams     Method:Get     Action:all teams
Endpoint:/api/v1/teams/:id Method:Get     Action:show team
Endpoint:/api/v1/teams/:id Method:Patch   Action:update team
Endpoint:/api/v1/teams/:id Method:Delete  Action:destroy team


Resource :Game

Endpoint:/api/v1/games     Method:Post    Action:new game
Endpoint:/api/v1/games     Method:Get     Action:all games
Endpoint:/api/v1/games/:id Method:Get     Action:show game
Endpoint:/api/v1/games/:id Method:Patch   Action:update game
Endpoint:/api/v1/games/:id Method:Delete  Action:destroy game



Warning Even though PUT routes shows up in the rake routes, it is NOT imeplemented in the controller.

if you want to test it from Postman
Here is an example for Post

Form data key value should be user[strava_name]
value = name



