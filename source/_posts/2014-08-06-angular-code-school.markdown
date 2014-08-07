---
layout: post
title: "Code School Angular JS:"
date: 2014-08-06 20:36:54 -0700
comments: true
categories: [Angular JS]
tags: [AngularJS, CodeSchool]
---

I've been going through the [Angular JS Code School](http://campus.codeschool.com/courses/shaping-up-with-angular-js/) 
course and decided to share a bit about what I've been learning. 

If you want to be able to share your project, go ahead and do Lesson 0; if you just want to run the app locally on your
machine, skip to Lesson 1. Code School does not go over deploying git, so it might be helpful to follow along. 

### Lesson 0: Set up Angular and Bootstrap ###

This step can be tricky, since there are a few ways to install Angular and Bootstrap. 

#### The easy way: using CDN ####

You can simply add the following code to your `head`:

    <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.21/angular.min.js"></script>
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

Keep in mind that the code will not work locally unless you type `http:` before all of that. 

#### The hard way: using Bower ####

Okay, the hard way isn't really that hard, it just requires you to install Node/npm, then `npm install -g bower`, then 
`bower install bootstrap` and `bower install angular`. 

Your assets will then be thrown into `/bower_components` so make sure that your `head` reflects that. 

### Lesson 1: Setting up `app.js`, `index.html` and our first controller ###

Create two new files; `app.js` and `index.html`. 

Begin your `index.html` like so:

Notice the `ng-app` in the `html` tag. You can name your `ng-app` whatever you want, as long as you name it the same 
thing in `app.js`!

``` html index.html
<!DOCTYPE html>
<html ng-app='gemStore'>
  <head>
    <!-- link and script tags may vary depending on how you decided to obtain bootstrap and angular --> 
    <link rel="stylesheet" type="text/css" href="bootstrap.min.css" />
    <script type="text/javascript" src="angular.min.js"></script>
    <script type="text/javascript" src="app.js"></script>
  </head>
  <body>
    <h1></h1>
  </body>
</html>
```

The first thing we need to do is create our app! This is simple. Add the following to `app.js`:

    var app = angular.module('gemStore',[]);
    
And there you have it! You are now running Angular.

To test it out, go ahead and write some code between the `h1`s:
    // app.js
    ...
    <body>
        <h1>{{"Hello, Angular!"}}</h1>
    </body>
    ...
    
Now, you can run JavaScript code between double curly-braces! Try different things out! 

