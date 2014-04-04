# Continous Delivery:
# Reliable software development through automation

## Jesse Szwedko
## j.szwedko@modcloth.com
## @jesse.szwedko


### Location: University of Pittsburgh
### Date: 4/4/2012
### Audience: Those with no or little background in continuous delivery (version control, automated testing, continuous integration, etc).
### This talk: [github.com/jszwedko/continuous-delivery-pitt-tasks](github.com/jszwedko/continuous-delivery-pitt-tasks) (slides are on gh-pages branch)

# ![modcloth](modcloth.png)

---

# Agile

![agile](agile.jpg)

## Continuous feedback

# Presenter Notes
- Waterfall is "similar" just with a longer timeline
- Flikr deploys 10 times a day

---

# Continuous Delivery

## _Continuous Delivery (CD) is a design practice used in software development to automate and improve the process of software delivery._ - Wikipedia

# Presenter Notes
- Anytime you are doing something manual, automate it
- Rule of 3s

---

.fx: full

![Automation](automation.png)

---

.fx: full

![continuous delivery diagram](Continuous_Delivery_process_diagram.png)

---

# Outline

## Process Evolution

- Cowboy coding
- Version control
- Local development
- Automated deploys
- Automated testing
- Continuous integration


## Complete example

---

# Tasks Application

![tasks application](tasks.png)

- Allow the user to create ToDos
    - Create
    - Read
    - Update
    - Delete
    - List

# Presenter Notes
- Simple CRUD application
- Focus on process
- Show running live

---

# ![ruby](ruby.jpg)

![Rails](rails.jpg)

# Presenter Notes
- Focus is on process, not technology
- Please ask any technology questions

---

# Feature request: As a user, I should be able to add a description for each todo

---

# Cowboy Coding

---

![Do it live](live.jpg)

---

# Do it live example

# Presenter Notes
- Add feature on remote box
- Make syntax error
- Revert to working version manually
- Show broken site (motivate version control and developing locally)
- Branch: initial-implementation

---

# Disadvantages

- Broken code is immediately visible to end user
- Can not debug code (reveal application secrets)
- End user sees a lot of volatility
- Cannot easily undo changes

---

# Outline

## Process Evolution

- Cowboy coding
- Version control
- Local development
- Automated deploys
- Automated testing
- Continuous integration

---

# Version control

## Track changes to source code

# Presenter Notes
- Started with making copies of files
- Unable to get back to stable state after changes

---

# ![github](git_and_github.jpg)

# Presenter Notes
- See source code at any point in time
- Source code example (show commit, checkout of older version)
- Image from http://programmers.stackexchange.com/questions/35074/im-a-subversion-geek-why-should-i-consider-or-not-consider-mercurial-or-git-or
- Demonstrate commit and push to github

---

# Version control example

# Presenter Notes
- Demonstrate commit, log, revert, checkout
- Demonstrate needing to see current changes

---

# Advantages

- Can deploy code at any point in history (e.g. to rollback to stable version)
- Can see why changes were performed
- Allow for collaboration

# Presenter Notes
- Imagine collaborating on code

----

# Still, we need to develop in a way where we can experiment

---

# Outline

## Process Evolution

- Cowboy coding
- Version control
- Local development
- Automated deploys
- Automated testing
- Continuous integration

---

# Develop locally

- Develop features, fix bugs, experiment locally
- Push changes to server only after you are done
- Consider using a virtual machine if your development enviroment is too different from the production environment

# Presenter Notes
- Use vagrant to spin up machine similar to "production" (especially when on Windows)
- Will not quite be push button, but we will get there

---

# Feature request: As a user, I should be able to add a description for each todo

---

# Developing locally example

# Presenter Notes
- Develop adding of description text field
- Push to github (show on Github)
- `git pull` on server
- Broken because of data migration!
- Are not updating JSON builders

---

# Advantages

- Can develop feature in increments, deploy when finished
- Allows for debugging
- Experimentation

# Presenter Notes

---

.fx: full

![continuous delivery diagram](Continuous_Delivery_process_diagram.png)

---

# Closer, but multi-step deployments introduce risk

---

# Deployment tasks

- Copy code
- Migrate database
- Restart web server

---

# Outline

## Process Evolution

- Cowboy coding
- Version control
- Local development
- Automated deploys
- Automated testing
- Continuous integration

---

# Automated deployments

- Specify each step of the deploy as code
- Deterministic
- Idempotent
- Should be able to rollback

![deploy](deploy.jpg)

# Presenter Notes
- Rule of 3s

---

# ![capistrano](capistrano.jpg)

# Presenter Notes
- Automated deployment tool (primarily used for Ruby applications)
- Other examples: ansible, chef, bash

---

# Automated deployment example

# Presenter Notes
- Review capistrano configuration
- Delete app/current
- Deploy
- Motivate need for tests

---

# Advantages

- Eliminate risk of multi-step deployments
- Deploying to multiple servers
- Automation as documentation

---

.fx: full

![continuous delivery diagram](Continuous_Delivery_process_diagram.png)

---

# How do we make sure the application is stable before each deploy?

# Presenter Notes
- Poke the application manually (does not scale)
- Stop regressions

---

# Outline

## Process Evolution

- Cowboy coding
- Version control
- Local development
- Automated deploys
- Automated testing
- Continuous integration

---

# Automated Tests

- Describe what the code *should* do
- Catch regressions

---

# MiniTest

# Presenter Notes
- Automated testing framework
- Alternatives include RSpec, TestUnit

----

# Feature request: As a user, I should be able to add a description for each todo

# Presenter Notes

---

# Automated testing example

# Presenter notes
- Add description, but break title
- Add view spec for show template to assert fields
- Break test
- Fix test

---

# But what if we forget to run the tests?

---

# Outline

## Process Evolution

- Cowboy coding
- Version control
- Local development
- Automated deploys
- Automated testing
- Continuous integration

---

![Travis CI](travis.png)

---

# Continuous integration server

## "Build" is triggered by commit or push to VCS

- Run set-up tasks
- Run tests
- _Build artifacts_

# Presenter Notes
- git log w/ branches ("alternative timelines")
- Github model uses pull requests
- Branch
- Add .travis.yml
---

# Feature request: As a user, I should be able to add a description for each todo

---

# CI Example (full example)

# Presenter Notes
- Create branch
- Add description
- Run tests
- Push to github
- Wait for Travis
- Merge
- Deploy

---

# Advantages

- Running tests happens automatically (you can trust other pull requests)
- Running application under many different environments
- Kick off longer test runs in the background

---

# Conclusion

---

.fx: full

![continuous delivery diagram](Continuous_Delivery_process_diagram.png)

---

# Mistakes we knew we were making
- Skipped infrastructure configuration
- You should try to avoid "building" on the server
    - E.g. we did asset compilation (translating of "higher" level languages to CSS and JS)
- You should have a test stage target for deployment that is identical to production
    - Some issues are environment specific

---

# Questions

## Jesse Szwedko
## j.szwedko@modcloth.com
## @jesse.szwedko
## This talk: github.com/jszwedko/continuous-delivery-pitt-tasks (slides are on gh-pages branch)

## Further reading: [Continuous Delivery: Reliable Software Releases through Build, Test, and Deployment Automation](http://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley/dp/0321601912)

# ![modcloth](modcloth.png)

---

# Technologies

# Used here:

- [Ruby](https://www.ruby-lang.org/) & [Ruby on Rails](http://rubyonrails.org/)
- [Capistrano](http://capistranorb.com/)
- [MiniTest](https://github.com/seattlerb/minitest)
- [TravisCI](https://travis-ci.org/)

# Others:

- [Ansible](https://github.com/ansible/ansible)
- [Vagrant](http://www.vagrantup.com/)
- [Chef](http://www.getchef.com/chef/)
- [Puppet](http://puppetlabs.com/)

---

# [Devops Days](http://devopsdays.org/events/2014-pittsburgh/)

![devopsdays](devopsdays.jpeg)
