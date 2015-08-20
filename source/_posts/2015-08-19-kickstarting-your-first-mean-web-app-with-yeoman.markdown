---
layout: post
title: "Kickstarting your first MEAN web app with Yeoman"
date: 2015-08-19 21:42:32 -0700
comments: true
categories: mongodb, express, angular, node, fullstack, yeoman
---

I've been going through [Free Code Camp](http://www.freecodecamp.com) and after finishing the front-end "ziplines" (which require a writeup of their own, eventually) I'm finally getting set for the fullstack "basejumps."

However, on their ["Get Set" module](http://www.freecodecamp.com/challenges/waypoint-get-set-for-basejumps), I ran into some problems with Cloud9 (primarily the memory issue), so I decided to figure out how to do some of these things on my local machine.

<!-- more -->

This is primarily a document for me to refer to when I create more fullstack apps, but may as well share it.

Note that I am using OS X. I provide no guarantees in this document, as I'm writing it as it worked for me. Feel free to leave a comment though.

## Step 0: get your environment set up

You should have the following installed: [npm](https://www.npmjs.com/), [Homebrew](http://brew.sh), and probably [bower](http://www.bower.io). Follow the links to install them.

Next, you should install [nvm](https://github.com/creationix/nvm) by running the following script in your terminal:

using curl:
`curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.0/install.sh | bash`

or Wget:
`wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.26.0/install.sh | bash`

The stablest node is `node v0.12.7` as of this writing.

I'm going to assume that you are in your project directory now. My project directory is `/sample` so keep that in mind going forward.

## Step 1: Get Yeoman started up

Copy this into your terminal:

`echo "export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules" >> ~/.bashrc && source ~/.bashrc && npm install -g yo grunt grunt-cli generator-angular-fullstack && yo angular-fullstack`

This will install grunt, grunt-cli, and yeoman's Fullstack Angular generator.

If the installs go well, Yeoman will start up and it will ask you questions. Answer as follows (feel free to answer however you want, but this is how I did):
```
What would you like to write scripts with? JavaScript

What would you like to write markup with? HTML

What would you like to write stylesheets with? CSS

What Angular router would you like to use? ngRoute

Would you like to include Bootstrap? Yes

Would you like to include UI Bootstrap? Yes

Would you like to use MongoDB with Mongoose for data modeling? Yes

Would you scaffold out an authentication boilerplate? Yes

Would you like to include additional oAuth strategies? Twitter

Would you like to use socket.io? No

May bower anonymously report usage statistics to improve the tool over time? (Y/n) Y
```

If the last step fails (the `bower install` and `npm install`) then run it manually:

`bower install && npm install`

## Step 2: Install MongoDB

This part was complicated. But here we go.

First, install MongoDB (I used Homebrw):

`brew install mongodb`

IF all goes well, type the following into your terminal:

`mkdir data && echo 'mongod --dbpath=data --nojournal --rest "$@"' > mongod && chmod a+x mongod`

Note that the Free Code Camp tutorial has this extra line: `--bind_ip=$IP`, which didn't work on my machine. I will find out soon enough if omitting it causes any problems.

Now, to start your database, just run...

`./mongod`

Easy as pie.

## Step 3: Start your server

This one is easy:

`grunt serve`

A new window should automatically open up with Yeoman saying "Allo Allo!"

That's as far as I am now, I will continue updating this document as I build my first fullstack project.
