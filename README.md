# Rails API Project

## Setup

First **fork** and *then* clone this repository.

`cd` into the folder you just cloned and run the following commands:

    bundle install

    rails server

If it worked, you should be able to navigate to [http://localhost:3000](http://localhost:3000) and see something there. If it didn't work, make sure you don't have any old servers running in other tabs or windows.

## Goal:

As described on the application's [http://localhost:3000](home page), I want you to make links like these work:

 - [http://localhost:3000/weather/5807+S+Woodlawn+Ave](http://localhost:3000/weather/5807+S+Woodlawn+Ave)
 - [http://localhost:3000/weather/450+N+Cityfront+Plaza+Dr+Chicago+IL+60611](http://localhost:3000/weather/450+N+Cityfront+Plaza+Dr+Chicago+IL+60611)

In order to do this, you will need to first complete the RCAV for that URL (I started it off in `routes.rb`).

Then, in your controller file, add the following to the top:

    require 'open-uri'
    require 'json'

You are now ready to read from the Google Geocoding API and Forecast API as you did last week in the API projects.

In your controller action, do all the work you need to

 - retrieve the user input (whatever they typed after the slash)
 - exchange it for a lat/lng pair from the Geocoding API
 - exchange the lat/lng pair for weather info from the Forecast API
 - place any values that you want to show the user in instance variables
 - write some HTML around the instance variables in the view template

At the end of the day, if I visit

[http://localhost:3000/weather/5807+S+Woodlawn+Ave](http://localhost:3000/weather/5807+S+Woodlawn+Ave)

I should see something like

The current temperature at **5807+S+Woodlawn+Ave** is **46.6** degrees.
The outlook for the next hour is: **Clear for the hour.**
The outlook for the next day is: **Mostly cloudy starting tomorrow morning.**

Optionally, link to [http://www.bootstrapcdn.com/](Bootstrap) or a [http://www.bootstrapcdn.com/#bootswatch_tab](Bootswatch) in the `<head>` (located in `app/views/layouts/application.html.erb`), and make things look prettier.
