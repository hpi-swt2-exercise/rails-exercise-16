# SWT2 2016/17 - Introductory Exercise

We prepared an application skeleton for you that has a failing test case.

To pass the exercise, follow these steps:

## 1) Fork this repository.

* You need to be logged-in with your Github account.
* Click the "Fork" button in the upper right.
* In your [repository's settings](/../../settings), enable issue tracking.

## 2) Set-up Travis CI for your fork

* Log-in to [Travis CI](http://travis-ci.org) and
* Enable automatic builds for your exercise repository.

## 3) Dive into the code

* Clone the repository on your computer!
  - Run 'bundle'
  - Run 'rake spec'
* Try to get the failing test green.

## 4) Commit and push

* When you are done, push your changes.
* Travis CI will now try to build your project.

## 5) Check your inbox

* You will be notified of problems via Github issues.
* While you wait, see if your code can use some refactorings, continue reading the tutorial, or plan the next steps.

## 6) For each ticket

* Write a test that documents the missing or failing behavior.
  * Unit tests are preferred.
* Commit the failing test and reference the issue.
  * The commit message could be `Failing test for #<ISSUE NUMBER>`.
  * There is no need to push the failing commit.
* Fix the issue and commit all changes.
  * The commit message could be `<CHANGED THE THING>. Closes #<ISSUE NUMBER>`.

## 7) Repeat steps 3 to 6 until the exercise is complete.

Tips:

* This exercise is designed to be solved while reading the official [Rails tutorial](guides.rubyonrails.org/getting_started.html)
* run 'rspec spec/features/<model>/<spec_name>.rb' to only run one set of specs
* have a look at /spec/factories to get 'inspiration' for your data model
* Besides simple scaffolds, [associations](http://guides.rubyonrails.org/association_basics.html) and [validations](http://guides.rubyonrails.org/active_record_validations.html) are needed ...
* occasionally start up the server ('rails s') and have a look at the app in your browser (http://localhost:3000)
* Look at the Mockup: https://gomockingbird.com/mockingbird/index.html?project=v890g6l#v890g6l/OQMURm
* Make sure that all local changes are committed (git status) and pushed to the upstream repository (i.e., the one on GitHub) before the deadline

