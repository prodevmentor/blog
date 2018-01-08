---
layout: post
title:  "Redux with React Demystified"
date:   2018-01-06
categories: react javascript es6 redux
---

Today we're going to dive into a technical topic, how Redux works and how you can use it work with the application data within your React app. 

# What is Redux?

I'm glad you asked! Its an implemnetation of the Flux Pattern. Basically it boils down to state is the most important element of the application. State being application data, such as a customer order history or order details. Basically this stuff needs a strict method of accessing and more importantly changing that data. 

Redux manages everything to do with State (AKA DATA). It can be used with Angular, React, Backbone and anything else really. 

The idea is really simple, rather then the App going to the API to get enough data to render the view, we shove everything into Redux which manages a Global State Store in browser memory. To modifiy or access this data you must use a well defined and documented API. Thus normalizing how and when data changes, thus leading to less bugs and issues. Thats the theory atleast. 

# What is the terminology? 

Its confusing. Actions, reducers, state, store, dispatch, blah blah blah... It can be overwhelming to understand what's truly going on, but once you understand it, it's pretty "simple".

1. Actions. These things call your API, fetch data from a library or other stuff. Think of this as something similar to a "controller" role within MVC. 
2. Reducers. These things manage the goal state "store". Basically they look at the current state and any data returned from the action then use it to make a decision on what stays or goes. Similar to a "Model"
3. State. This is application data. JSON. Stored in browser memory, cleared on refresh unless you persist it. 
4. Store. This is the class that surrounds the state, it defines the APIs to manage and view state. It is the gate keeper!
5. Dispatch. This is an API method, baiscally redux has an internal event bus, you use dispatch to notify the system that you're changing or fetching data. 
6. Connect. This can be used to wire state to components, wire in Dispatch context so Actions can fire correctly etc... etc...

# Show me a picture! 

# Show me code! 

----------------------------------------------

# Redux Meets React

Redux is a useful tool for global state management within the context of React. Redux can be used for apps other then React
but the focus of this article is specifically about React. 

# Redux State vs Component State vs Props

State is an overloaded term. It can mean Redux state, in React it often means component state. Lets clear things up

## Redux State
This is typically Global State. 

##
