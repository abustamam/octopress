---
layout: post
title: "One Month Stripe Payments"
date: 2014-08-17 20:26:36 -0700
comments: true
tags: rails, one_month
categories: rails
---

I first started coding with One Month Rails. It was a very simple tutorial to go through, and it took me a month to go through it.

Now, [One Month Stripe Payments has been released](http://mbsy.co/onemonth/10032515). I finished it in a week. 

<!-- more -->

The finished product can be viwed [here](http://calm-everglades-6719.herokuapp.com). I edited a few things of course, I just wanted to get a feel of how things worked.

Now, I'm re-coding the project to make a website for a friend. You can follow along with the [Github repo](https://github.com/abustamam/stuart_welch)

First, to start, I learned something the hard way. Make sure that your project path does not contain any spaces. After probably hours of troubleshooting, I finally elected to change my `Rails projects` directory to `Rails_Projects` and everything worked fine. So don't make my mistake!

Go ahead and make your new rails app:

`rails new stripe_payments`

The first thing you'll want to do is configure your home page. 

``` ruby app/controllers/pages_controllers.rb
class PagesController < ApplicationController
   def home 
   end 
end
```