# FitGurus

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
This app allows fitness gurus to post workout and diet plans that users can purchase for a price set by the gurus.

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category: Heatlh and fitness**
- **Mobile: IOS**
- **Story: A platform for fitness gurus to create and share their wokout plans and diet plans for prices set by themselves. Users of the app will be able to view all the different types of plan and purchase whatever best aligns with their goals.**
- **Market: People looking for vaious workout and diet plans to help them achieve their fitness goals.**
- **Habit: Users can use this app everyday to consistently follow their choice of workout and diet plan, and as their fitness goals change they can purchase new plans.**
- **Scope: Health enthusiast (18+)**

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [ ] Users can login, logout and signup (either as a fitness enthusiast or a fitness guru)
- [ ] Users can view various workout plans and diet plans.
- [ ] Users can purchase plans from various Fitness Gurus.
- [ ] Users can view the plans they have purchased. 
- [ ] Users (only fitness gurus) can create and share different workout plans and diet plans.

**Optional Nice-to-have Stories**

- [ ] Users can rate the fitness gurus and their plans.
- [ ] The home screen will be sorted based on the fitness gurus ratings.

### 2. Screen Archetypes

* Login
   * User can signin
   * User can choose to signup
   
* Signup
   * User can enter their info
   * User can choose their type either, fitness enthusiasts or fitness gurus
   * User can signup
   
* Home
   * Users can see various workout and diet plans
   * Users can view anyone of them in detail by clicking them
   * Users will have the option to view their own profile
   * Users will have the option to view the plans they have purchased
   * Only fitness gurus will have an additional option to make a plan

* Purchased plans
   * Users can view the list of plans they have purchased
   * Users can view anyone of them in detail by clicking them

* Plan details
   * Users can view seleted plans in detail
  
* Make Plan (only for fitness gurus)
   * Fitness gurus can create a new workout or diet plan
   * Fitness gurus can set their own price for their plans
   * Fitness gurus can publish their plans for all the users

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Home
* Profile
* View Plans
* Purchased Plans
* Make Plan

**Flow Navigation** (Screen to Screen)

* Login
   * Goes to home screen if signined with correct information
   * Goes to signup screen if signup button is pressed

* Signup
   * Goes to home screen when all the infomation is filled
  
* Home
   * Goes to profile if pofile button is pressed
   * Goes to purchased plans screen if purchased plans button is pressed
   * If Fitness guru, goes to make plans screen if make plans button is pressed
   * Stays in home screen if view plans button is pressed
   
* Purchased plans
   * Goes to profile if pofile button is pressed
   * Goes to home screen if view plans button is pressed
   * If fitness guru, goes to make plans screen if make plans button is pressed
   * Stays in purchased plans screen if purchased plans button is pressed
 
 * Plan details
   * Goes to profile if pofile button is pressed
   * Goes to home screen if view plans button is pressed
   * If fitness guru, goes to make plans screen if make plans button is pressed
   * Goes to purchased plans screen if purchased plans button is pressed
  
* Make plan (only for fitness gurus)
   * Publishes the plan and goes to home screen if publish button is pressed
   * Goes back to home screen if home button is pressed

## Wireframes
<img src="FitGuru wireframe-2.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
