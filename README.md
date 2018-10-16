# SWT2 2018/19 - Introductory Exercise

We prepared an application skeleton for you that has a failing test case.

To pass the exercise, follow these steps:

## 1) Set-up Travis CI for your repository

* Log-in to [Travis CI](http://travis-ci.org) and
* Enable automatic builds for your exercise repository (add the hpi-swt2-exercise group to the list on the left and activate the builds for your repository by flicking the switch on)

## 2) Setup development environment

* Clone the repository to your local machine

### Option 1: Setup locally
* Change into the newly created directoy
* Inside the directory, check the used Ruby version using `ruby --version`. It should be `2.2.2`. Other Ruby versions might work, but this is the one that was tested.
* If the correct Ruby version is not used, install a ruby version manager, for example [rbenv](https://github.com/rbenv/rbenv) using the instructions for [rbenv installation](https://github.com/rbenv/rbenv#basic-github-checkout) and [ruby-build installation](https://github.com/rbenv/ruby-build#installing-as-an-rbenv-plugin-recommended).
  * WARNING: If you already have the Ruby version manager [RVM](https://rvm.io/) installed, please use that or uninstall it prior to rbenv installation, as the two version managers are incompatible.
* Install Ruby version 2.2.2 with `rbenv install 2.2.2`
* The `.ruby_version` file in the repository instructs the ruby version manager to use the correct version.

### Option 2: Use a VM
* Install [Virtualbox](https://www.virtualbox.org/manual/ch02.html) (the VM provider) and [Vagrant](https://www.vagrantup.com/docs/installation/) (to manage VMs) for your platform.
* Run these commands in the root directory of your cloned repository to download and the prepare the VM image:

```
vagrant up # download the image and start the VM
vagrant ssh # connect via ssh
cd hpi-swt2
bundle install # install dependencies
exit # restarting the session for changes to take effect
```
* In order to start the development server:

```
vagrant ssh #connect with VM
cd hpi-swt2
rails s -b 0 #starting rails server, the -b part is necessary since the app is running in a VM and would otherwise drop the requests coming from the host OS
```

* You can open the application in your web browser via http://localhost:3000/
* Edits to files in the local folder will be mirrored into the VM's `hpi-swt2` folder as the folders are synced.
* We recommend you to open one terminal session that runs the development server and another one to execute commands on the machine (e.g. running tests). Then you do not have to restart the server after each command.

## 3) Dive into the code

* Run `bundle install` to install the dependencies of the project (they are stored in the `Gemfile`)
* Run `rspec` to run the tests ([RSpec](http://rspec.info/) is a test framework for Ruby)
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

## 7) Repeat steps 4 to 6 until the exercise is complete.

Tips:

* This exercise is designed to be solved while reading the official [Rails tutorial](http://guides.rubyonrails.org/v4.2/getting_started.html)
* run `rspec spec/<path_to_spec>.rb` to only run one set of specs
* have a look at `/spec/factories` to get 'inspiration' for your data model
* Besides simple scaffolds, [associations](http://guides.rubyonrails.org/association_basics.html) and [validations](http://guides.rubyonrails.org/active_record_validations.html) are needed ...
* occasionally start up the server (`rails s`) and have a look at the app in your browser (`http://localhost:3000`)
* Look at the Mockup: https://gomockingbird.com/mockingbird/index.html?project=v890g6l#v890g6l/OQMURm
* Make sure that all local changes are committed (`git status`) and pushed to the upstream repository (i.e., the one on GitHub) before the deadline

