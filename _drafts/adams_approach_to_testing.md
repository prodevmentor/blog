---
layout: post
title:  "Contract driven testing is the best testing"
date:   2018-02-16
categories: TDD testing contract-testing
---

I love testing. I've always been a big fan of testing, but in the last 5 years, I've seen a lot of really terrible tests written. Today I'm going to explain to you the levels of testing I believe are most useful.

# Where testing has gone off the rails

Testing started out great. TDD slowly became the king especially with "Red, Green, Refactor" as its slogan. TDD has fallen off the rails. It's far too close to the code to be of any help.

Far too often the test cases are too narrow and too specific to how the code was written. The concern with testing has been for far too long "how many lines of code are covered" or "the test suite is not consistent on the testing servers".

There are levels of testing, while TDD is great for unit tests, I think unit tests have extremely low value in application design and should be minimalized. I know this goes against common thought in our industry, but our time is limited and valuable.

# There are 5 levels of testing worth doing

1. Penetration testing. Yes, this is the most important test you could conduct on your system. Developers don't write automated tests for this nearly enough. This needs to change.
2. Performance testing. This helps us know how our application will handle under load and spot issues like N+1 query issues.
3. Unit level tests for complex logic. I think unit tests are great when dealing with input that has to be regexed, transformed, or computed. If it's crud, rendering to a UI or something like that, they're really less than helpful. The question I ask is: "In reading, this code, how complex or complicated is the logic?" If I can understand it in about a minute or two, it's not worth testing.
4. UI tests. Did the page draw? Do the buttons work? Does it look ok in IE? Chrome? Firefox? iPhone? Android? Cool. When the UI consumes an API, I tend to mock those out and simulate use cases, errors etc... I try not to use a real API, just mocks.
5. Contract testing. This is what we're talking about today, but basically, we test in a similar fashion as "black box" testing with some BDD similarities.

# Rules for Contract testing

# Rule 1: Tests are loosely coupled from implementation

Coupling in software leads to inflexibility which leads to unhappy builds and test suites. When writing and building software, I think of what are the things this software I'm writing is going to be doing? What is the point?

That should leave you with a few possible outcomes:

1. I'm building a system script for some purpose
2. I'm building an API that others will consume
3. I'm building a UI that someone will use

Contract testing is best applied to 2 and 3. That is there is some finite outcome.

# Rule 2: Tests are purely functional

Contract testing is functional testing. It's purely black box. Cases, where this is helpful, is such as implementing a Tax Rate API. You supply $6.17 in sales for groceries and in Denver, Colorado the city sales tax is 0% for food. Therefore the total price is $6.17. But in Boulder the sales tax is 6% so you have to account for each situation:

* The input price
* The location
* The expected outcome

Unless tax rates change for a given location, the expected outcome should be consistent regardless of the technology. There are no side effects.

More generally contract testing is focusing on outcome vs implementation.

# Rule 3: Testing that is platform or technology agnostic

This is derived from rule 2. The technology of the testing mechanism is platform independent. Your tests aren't necessarily written in the application's language. They're implemented separately. The advantage of this when it comes to API testing is that when your tests are separate the code base can change without breaking the tests.

When the code base changes, the tests don't have to unless there is a rule that the tests didn't account for. This style of testing can be likened to black box testing.

This approach is really helpful when building Microservices. The idea is that you are testing "I send in x,y,z data" I should get the same response every time. The code can change, in fact as long as you implement the correct format, structure, and return a consistent response based on input you can change everything. The database, the tech can go from Ruby to Elixir, or to Node. It can be deployed to Google Compute instead of Amazon. Everything can change.

# Why contract testing?

I think it can be summarized nicely:

* Testing the contracts allows true flexibility in design of the software
* Testing the contracts ensures consistency
* Testing the contracts ensures that your code can change while your tests are fixed
* This prevents bugs from creeping into your software through refactoring or other redesign efforts
* Saves time from having to write large, complex test suites that break every other build

# How do I do contract testing?

This is where it gets harder. This is not as common in the industry as TDD so there are fewer tools available. The way I approach this is a bit interesting:

## Every API has a schema

It can be XML or Json. I prefer Json schema as most developers in the last 5 years can read it far easier to XML. It defines the keys, the acceptable parameters and the associated validations as well as if the field is required. This can be helpful for generating mock test data. There is a really good tool for generating these types of files: [RAML](https://raml.org/)

Using the schema, I can generate mocks but also I publish a dynamically created schema from the API. From this I can write a test that says:

> Does my stored schema match the one the API is returning?

If it doesn't match that could lead to interesting and unexpected bugs for the consumers of our APIs.

## Every API endpoint has at least one related test

Each API needs a bunch of different tests for each endpoint. Testing things like authorization keys, headers, client-side errors, server-side errors and the list go on and on in terms of the error checking you need to be doing.

More importantly, you need to test each possible scenario. If you're writing an API that takes zip codes and returns the sales tax for that area you need to account for oddball zip codes such as those that end with 9 or start with 0, ex 00501 which is Holtsville, New York. Testing the bounds, the ranges, and the edge cases. By doing this at the API level, you're not tied to how the code was written to get there but the outcomes.

Almost any testing suite can do API calls. In Javascript, I've been liking Jest quiet a lot. There are also things like RSpec with Ruby (You don't need Rails).

In a future post, I'll give you a demo of how this all works so you can see and poke at living examples.
