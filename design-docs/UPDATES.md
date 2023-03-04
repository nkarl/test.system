## 01/21/23 08:17pm
---
I figured out how to connect the server (api) with the database. I also know how to write CRUD requests to query and `GET` from the dockerized database using `express` and `pg` packages as well.

That was a huge load off my shoulder. Took me 3-4 days in total. Now I can finally start working on the front end.


## 01/21/23 12:33pm
---
I will only dockerize the database for now, because the client (app) and server (api) can be run directly on my host machine at different ports. The problem has always been **connecting the (api) with the database**. This is a problem I have currently have no solution for, but it should not have a big influence on the code base.

Solution:
- repopulate the server (api) with sample code.
- run and populate the database with sample data.
- fix the connection problem.
