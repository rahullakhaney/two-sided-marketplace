# Planning Our Application
1. What are we building?
2. Who are we building it for?
3. Features we need in our app
4. User Stories
5. Data Models
6. Pages we need in our app

## Questions

1. What are we building?
	- We are building a two sided marketplace using Ruby on Rails
	- We will be able to buy or sell books via the marketplace
	- We will be able to view purchased, posted, and sales in the dashboard
	- We will be using devise with confirmable and mandrill to make sure that the user verifies his/her mail address before proceeding further
	- We will use states and states machine for added security
	- We will follow Skinny Controller Fat Model approach to make this as lightweight as possible
2. Features we need in our app
	- Landing Page
	- Login
	- Signup
	- ActionMailer
	- Stripe
	- States and State Machines (AASM)
	- Bootstrap

3. User Stories
	- As a blank, i want to be able to blank, so that blank
	- As a buyer, i want to be able to buy books so i can download them
	- As a seller, i want to be able to sell a book so i can make some money

4. Modelling Our Data
	**Books**
	- name:string
	- author:string
	- description:text
	- price:integer
	- availability:boolean
	- user_id:integer
	- image:attachment
	- resource:attachment
	**User**
	- fullname:string
	- devise handles the rest
	**Transaction**
	- buyer_email:string
	- seller_email:string
	- guid:string
	- book_id:integer