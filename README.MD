# Modak Interview Exercise

## Challenge Senior QA Engineer

(Automation)

### Objective
    We want you to complete the following code test to evaluate your
    automation skills. Please place your code in a public GitHub repository so
    we can review it.

### Feature to Test
    As a Customer, we want to see if the second item from the second results
    page when searching for `instax mini` on www.aliexpress.com has at least 1
    item to be bought.

### Show your work
    1. Create a Public Repository
    2. Commit to each step of your process so we can follow your thought
    process.

### Technologies
    You can use any language of your choice.

## Time Spent
    We suggest not to spend more than 5 days total. Please make commits as
    often as possible so we can see the time you spent and please do not make
    one commit. We will evaluate the code and time spent.
    
    What we want to see is how well you handle yourself given the time you
    spend on the problem, how you think, and how you prioritize when time is
    sufficient to solve everything.
    
    Please email your solution as soon as you have completed the challenge or
    the time is up.

## Setup

### Install Ruby v 3.2.2
I recommend installing rvm, steps can be found [RVM](https://rvm.io/)
Then with rvm installing the desired ruby version
> rvm install 3.2.2

Double check the successful installation
```
> ruby -v
ruby 3.2.2
```

### Install bundler gem
```
> gem install bundler
```

### Install all project dependencies
```
> bundle install
```

### Chromedriver
Chromedriver should be automatically downloaded and installed by webdrivers gem, but in case you have any trouble or just prefer it that way, you can download the chromedriver from the [google chrome for developers](https://developer.chrome.com/docs/chromedriver/downloads) and put it in `/urs/local/bin`, just make sure the chromedriver version matches your chrome version.

### Code Linter [Rubocop](https://rubocop.org/)
```
> rubocop
```

### Execute tests
```
bundle exec cucumber
```