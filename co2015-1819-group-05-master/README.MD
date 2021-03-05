## Important note:

As this is an internal company app, a user needs to be added by admin to be able to sign up - otherwise the app will not work properly. There are two ways of doing this:

1. Using the database currently connected in the project - > there is an admin already created, that is permanently in the
database with username: "a.admin@fdmgroup.com" and password: "password", using that account you can login to admin page, add
other users and then sign them up

2. Otherwise you need to add an admin account in the database that you are using. It is possible to do that through the 
application: go to "/adminmain/" there you can add users

</br>

### Keep in mind 
1. All usernames must be in the form "name.surname@fdmgroup.com" - attempting to use other usernames will not be successful.

2. Any newly added user needs to sign up before logging in

</br>

# Timesheets (CO2015 project)

[![Build Status](https://travis-ci.com/UOL-CS/co2015-1819-group-05.svg?token=eHvwk1JhFvwzUrwW6uKS&branch=master)](https://travis-ci.com/UOL-CS/co2015-1819-group-05)

</br>

## Definition of Done

| Criteria      | Description  | Evidence |
| ------------- | :-------: | :-----:  |
| Code      |The code is written, it compiles and runs. | Link to the Github commit(s) on pivotal tracker (in the comments of the story). |
| Unit testing       | Each method that returns a value but doesn’t interact with the spring framework must have Junit tests written for it. | Link to the Github commit(s) on pivotal tracker (in the comments of the story). |
| CI passing        | When the code and unit tests are written there must be a build on Travis CI that passes. | Link to Travis CI passing build webpage on pivotal tracker (in the comments of the story). |
| Manual testing     |Done by someone other than the developer. The tester will add their bug report on the repository markdown file. |   Link to the bug report in Github on pivotal tracker (in the comments of the story) & link to the commit(s) with the bugs on pivotal tracker (in the comments of the story).|
| Integration testing      | Each SpringMVC controller method must have automated tests that check that the method acts correctly for appropriate inputs. | Link to the Github commit(s) that added the code for tests. |
| Integration Tests running on CI     | The Integration tests pass on Travis CI. |Link to Travis CI passing build webpage on pivotal tracker (in the comments of the story)|
| Coding Standards Checked      |Automatic checking of coding standards is done via gradle and checkstyle. Checkstyle report for the build should have no errors.|Link to the CheckStyle report page of the passing build on pivotal tracker (in the comments of the story).|

</br>

## Roles and Responsibilities

| Role                  | Daisy   | Faith   | Gloria  | Klaudia | Yaxin   |
| --------------------- | :-----: | :-----: | :-----: | :-----: | :-----: |
| Software developer    | x       | x       |  x      | x       |  x      |
| Automated test writer | x       | x       |         |         |         |
| Manual tester         | x       |         | x       |         |  x      |
| Build engineer        |         |         |         |         |  x      |
| Coding standards fixer|         |         |         |  x      |         |
| Scrum Master          |         |         |         |  x      |         |
| Product Owner         |         |  x      |         |         |         |
| Assesment lead        |         |  x      |   x     |         |         |
| Technology lead       |         |         |         |  x      |  x      |
| Configuration Manager |         |         |  x      |         |         | 
