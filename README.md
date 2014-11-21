## Rock, Paper, Scissors

### Introduction

After spending three weeks learning about Ruby, we were asked to make a simple Rock, Paper, Scissors game that could be played online. The game had to be written in Ruby and use the Sinatra framework. The game also had to incorporate basic HTML and CSS to make it look nicer than a simple text-based game.

### Languages/Platforms/Tools

* Ruby
* Rspec
* Cucumber
* Sinatra
* HTML/CSS

### Learning Outcomes

This project represents my first step towards becoming a full-stack developer. With a back-end using Ruby logic, I developed a basic front-end using HTML and CSS. The project showed me the importance of understanding the entire stack and how a simple change to the logic or the HTML or CSS can wreck havoc on the entire application. For example, when creating the front-end and the buttons for the player to make their selection, I did not properly label each choice. Thus, when a user clicked submit, the game engine was unable to work properly. After spending two hours attempting to debug the issue, I realised that the game engine was unable to work properly and changed the HTML code to better integrate with the Ruby code/logic. 

With this project, I also appreciated using Cucumber and developing my application using BDD principles in addition to TDD principles.

### To-do List

- [X] Update CSS
- [ ] Add jQuery to make game interactive
- [ ] Make HTML/CSS responsive for use on other devices

### Instructions

Clone the repository:

```
$ git clone git@github.com:andrewhercules/rock-paper-scissors.git
```

Change into the directory and run the tests:

```
$ cd rock-paper-scissors
$ rspec
```

Install the gems listed in the Gemfile:

```
$ bundle install
```

Start the Sinatra server and visit http://localhost:9292:

```
$ rackup
```