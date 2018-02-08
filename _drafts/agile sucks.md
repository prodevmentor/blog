---
layout: post
title:  "Agile is completely broken"
date:   2018-02-06
categories: agile process development
---

The Agile Manifesto, the document that breathes life to our development organizations, was designed by people who wanted to change their industry. It is a noble cause, it is a just cause; it just didn't work.

# What is the manifesto? 

> We are uncovering better ways of developing
> software by doing it and helping others do it.
> Through this work we have come to value:
>
> **Individuals and interactions** over processes and tools
>
> **Working software** over comprehensive documentation
>
> **Customer collaboration** over contract negotiation
>
> **Responding to change** over following a plan  
> That is, while there is value in the items on
> the right, we value the items on the left more.

# Why is Agile Broken?

## People don't effectively interact

People, all people, the team, management, and the customer don't effectively interact. There's a complete disconnect at all levels. The first value is 'Individuals and interactions', we lose this in the religion of Scrum or XP. It's totally stripped from us whenever we visit the cermony of sprint planning, sprint review, retrospectives, grooming, and standup. 

All of these things are "processes" to facilate conversation and interactions. When was the last time you left a planning session or grooming session feeling empowered and ready to conquer the day? These meetings are a cheap subsititue for true Agile. To be truly agile, you value real, honest communication with people regaurdless of the nominclature, title or role. 

At the cermonies we have our normal rountie, the scrum master or team lead kicks off the meeting. Then people commit to their availability (some teams), then open the backlog to start "grooming" the stories. There's the pointing scale, is it LOE, time to complete, t-shirts or fibonacci? Every team does it slightly differently, hence why we need to coordinate in a scrum of scrums to get every team on the same page. 

When was the last standup you left and felt like it was better then a status meeting? 

## Teams aren't empowered

Does the problem set make more sense to build in Elixir or Go? Well, the company only will support Java. Sorry, we know that you can get better productivity, better scale and even more amazing security by chosing the best technology, but we can't let you chose that. We only pick technologies that make sense for what we can hire in the local market at the cheapest price. Sure hope you don't mind PHP! 

Worse yet, many companies won't accept their own highly paid software engineer's feedback on the process, tooling or let alone technology to use. 

Want to change how we conduct status meetings? Nope. This is the way we do it, because it's effective. 

## The customer never bought in the first place

When was the last time you, the developer, got to talk to the customer? I don't mean a business analyist. I mean the person in marketing or product that says "We need this product to do xyz". Thats the person who needs to be bought in, thats the person who needs to understand the agile process. Thats the person you need to be getting as much feedback as quickly as possible.

This is who your 'real' client is, not your manager or boss, but these people. Who is paying your group to build stuff? Who is asking for this stuff? Can they explain why they need it, justify it to you? Can they explain it so it makes sense to you? Can you poke holes in their ideas? Ask about edge cases? 

These are the most important people to makesure you're communicating frequently, clearly and effectively to. Regaurdless of management, these are the people you're truly beholden to. 

## Unsupportive Management 

To often teams and many companies get stuck in their way of doing things. When new people come onboard and aren't familar with the process it can be hetic to get up to speed. Not only that, but often time teams have norms and standards around how they conduct themselves and they don't want to get better. 

Management often only cares about quickly delivering a product so they can meet their 'goals', 'objectives' or 'wins'. Management wants to stastify their stakeholders needs at the cost of quailty, at the cost of scalability. Why is it so often that developers come into a new orginization and there are so many fires to put out? Management wants to solve for today's problems and defer tomorrow's problems. The trouble is when deferring archecture, and system design for short term wins. "Short term wins" are always "long term", the "temporary" project always becomes "permanate" production instance that needs "maintence" or just some "tweaking". 

# What we can do to fix Agile

## Empower Teams

Teams should be accountable for the time they use but they must also be able to use the time given to make the choices that make sense for the given problem constraints: time, energy, effort, and budget. 

Teams should be empowered to choose scrum, xp, or kanban, or their own magic bean method. Teams should work with others and play nicely. Teams should consider organizational strengths and weaknesses when chosing a new technology stack. 

The decisions should be left up to the team unless the team chooses to delegate or defer. Decisions such as:

* What technology makes sense?
* What process do we use?
* What tooling and frameworks do we use?
* How do we conduct testing?
* How do we get customer feedback?
* When will we deliver X, how will we deliver x?

## Engage Customers

Customers, clients and stakeholders need to be engaged and bought into the process. We can't have clients running around thinking they need to shove requirements at us over the waterfall. We need our customers bought into the agile process. We need them on the phone or in the building, or atleast a screen hero away from communication. 

Delivering is apart of engaging your customer. It's important to deliver as early as possible the smallest amount. Often I start at the login page then iterate on functionaility from there. Delivery isn't "we put it in the dev environment, there it is!", delivery is the client being able to interact and USE the product from the start. If they can't press buttons and move around, then you haven't delivered ANYTHING. 

Customers need to understand how you commit to releasing the code, how you gather and accept their feedback. They need to know what you're working on, what the challenges are and what the blockers are that they can resolve. What are the ideas or concerns you have that they don't know about? This is why middlemen such as business analysits are a terrible idea because they get in the way of effective client to developer communication

## Support your team

Management and leaders, ensure the team has good leaders. Ensure the team has the equipment, tooling and processes defined that they need to get their jobs done. Don't bore them with hours of irrelivant meetings or details they don't actually need to know to do their jobs. 

Hold back on critisim and act like a coach. Instruct, guide, direct but never dicate from your ivory tower. Ensure the team has your support, if the customer is bashing the team, defend them, acknowledge the concern and help the team improve with their buy in to the process. 

Help the team eliminate ceremonies or meetings that aren't useful or helpful. 

## Use a simpler process

XP, Scrum, waterfall, scalable agile, and others are all complex machines to define the work and get the work done. The trouble is often times you spend atleast 1 to 2 days per iteration to get the developers to do this work for them to actually do the work of writing the software. This is wasted time. 

I personally believe and prefer Kanban. Anyone can add a story to the backlog, the team lead and product owner manages the backlog, ensuring that it has enough details to be completed. The developer picks up the story from the "ready" column then moves it through completion: doing the work, testing it, getting QA approval and finally get client approval. 

The developer is a major part of the process, they're not just a dumb brick layer but a critical path to getting the software done correctly. The trouble with this is the developer actually has to learn how to communicate and talk to people effectively. Which can be a big challenge for some people. The result however is the team has more energy to focus on the work vs focusing on the process of creating the work to do the real work. 

# Closing thoughts

Agile isn't really broken. It's the companies that don't understand what its truly about. It's less about the process, the people in their ivory towers and more about the interactions of the team members with the customer to deliver working software. 
