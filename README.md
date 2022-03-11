+Original App Design Project - README Template
===

# SimpleFav

## Table of Contents
1. [Overview](#Overview) 
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
A fitness app that allows the user to plan a daily routine, with videos available on the internet. It also allows the user to save videos from multiple platforms on this app from apps such as 
    Instagram, Youtube, TikTok etc. 

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Lifestyle/ Fitness 
- **Mobile:** iOS App
- **Story:** User can save videos to be referenced later, and be able to plan a routine with free 
                videos available online. 
- **Market:** Influencers, users looking to organize their workout videos 
- **Habit:** This app could be used everyday or as often as the users exercise habits are. 
- **Scope:** First we would start with the user being able to search and save the videos available  
                this app. Then, the user could organize specific videos to a playlist. Then, a 
                scrolling timeline. If we had time, the ability to share with other people and 
                integrated with the user's calendar. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Login to an account they have and log out 
* A scroll scroll screen 
* A weekly 

**Optional Nice-to-have Stories**

* Scrolling timeline 
* Sharing between users 
* Integration with calendars 

### 2. Screen Archetypes

* Login screen 
   * Ability to login 
   * Ability to logout 
* Timeline view 
   * Scroll through the videos 
   * Get videos from other sources 
* Weekly view 
   * Saved a video to a specific day  

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Default playlist 
* Homescreen 
* Possible - User profile 

**Flow Navigation** (Screen to Screen)

* Forced Log-in -> Account creation if no log in is available
* Video selection -> Add to playlist 
* Select video -> Add to day 

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
Models
| Property     | Type           | Description   |
| :---         |     :---:      |          :--- |
| Username     | String         | Users Username|
| Password     | String         | Users Password|
| Image        | File           | Users defined playlist thumbnail|
| Search | String | Search to find workout videos |
| Video Title | String | The user defined title given to a saved video |
| Video Decsription | String | User defined Description given to a video |
| Day | String | Holds the value of the days of the week |
| User | File | User profile pic |
| Personal Info | String | Personal information of the user such as age and height |
| About Me | String | Holds the description of the user |

[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
