## 2023-03-04 03:12pm
---
I redid another ExpressJS tutorial. This time I made an Express server with a generator, unlike last time. I can see how the boilerplate project is laid out now.

## 2023-03-04 12:16pm
---
It's a 3-tier web service system consisting of

- database
- server
- client

In the first iteration, the database took quite some time to set up because of my lack of experience with Docker containers. However, it's a one-time investment; I don't need to go back and tweak the docker container anymore.

The real work comes from both the server and client.

For the client, there is a steep learning curve because of the sheer amount of knowledge about HTML and CSS that I needed to learn initially. Because of the volume of information is too large, it is difficult to identify and retain useful knowledge. This is why it took so me so many attempts at learning web development via HTML/CSS/JavaScript. It's a whole freaking stack all deeply integrated together!

For the server, it is simply because I am unfamiliar with ExpressJS. It is intimidating because I don't have a referencing example for how ExpressJS should work. Furthermore, I haven't got much luck in finding out the answer to the problem I have been trying to fix.

I should start with the server. Let's rebuild the server. I will build simple example server with a preset JSON data object. It's an opportunity to accomplish a few things at the same time, which ultimately will solve the original problem:
- familiarize myself with ExpressJS
- replicate the original problem, and check whether it is a persistent problem
	- is it a problem due to bad design?
	- will it go away if I change the design?

Right, let's start with the server component.


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
