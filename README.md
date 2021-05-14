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

- [x] Users can login, logout and signup (either as a fitness enthusiast or a fitness guru)
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
### Models
Plans
|Property|Type|Description|
|--------|----|-----------|
|objectId|String|unique id for each Guru's workout plan|
|author|points to user|displays authors username|
|rating|Number|average rating given for a Guru's plan|
|description|String|Description given by Guru for their plan|
|title|String|Title of each plan|
|price|String|price of each plan|

Purchased Plans
|Property|Type|Description|
|--------|----|-----------|
|objectId|String|Unique id for each Guru's workout plan|
|author|points to user|Displays authors username|
|rating|Number|Average rating given for a Guru's plan|
|description|String|Description given by Guru for their plan|
|title|String|Title of each plan|
|delete|String|Deletes purchased plan|

### Networking

**Home Feed Screen**

  * (Read/GET) Query all posts which an user can buy
  * (Buy/GET) User can buy listed plans
  * (Rate/POST) User will be able to rate a plan
  * (DELETE) Delete existing rating

**Create Plan Screen**

  * (Create/POST) Guru can post new plan which appear in Home Feed.

**Profile Screen**

  * (Read/GET) Query logged in user object/plans
  * (Update/PUT) Update list of plans or profile image

# FitGuru - Part I
  
  ## User Stories

The following **required** functionality is completed:

- [x] User can log in. 
- [x] User can sign up.


## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/H46dJ5EeMj.gif' width=300><br>

# FitGuru - Part II
  
  ## User Stories
  
  - [x] User sees app icon in home screen and styled launch screen. 
  - [x] User can log out. 
  - [x] User stays logged in across restarts.
 
 <img src='http://g.recordit.co/0RCNY7csCS.gif' width=300><br>

# FitGuru - Part III
  
  ## User Stories
  
  - [x] Users can view various workout plans and diet plans.
  - [X] Fit Gurus can create plans
 
 <img src='http://g.recordit.co/AZe7JPd4e8.gif' width=300><br>

