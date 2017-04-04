Takeaway Challenge
==================
```
                            _________
              r==           |       |
           _  //            |  M.A. |   ))))
          |_)//(''''':      |       |
            //  \_____:_____.-------D     )))))
           //   | ===  |   /        \
       .:'//.   \ \=|   \ /  .:'':./    )))))
      :' // ':   \ \ ''..'--:'-.. ':
      '. '' .'    \:.....:--'.-'' .'
       ':..:'                ':..:'

 ```

Instructions
-------

* Challenge time: rest of the day and weekend, until Monday 9am
* Feel free to use google, your notes, books, etc. but work on your own
* If you refer to the solution of another coach or student, please put a link to that in your README
* If you have a partial solution, **still check in a partial solution**
* You must submit a pull request to this repo with your code by 9am Monday morning

Task
-----

* Fork this repo
* Run the command 'bundle' in the project directory to ensure you have all the gems
* Write a Takeaway program with the following user stories:

```
As a customer
I would like to see a list of dishes with prices
So that I can check if I want to order something

As a customer
I would like to be able to select several available dishes
So that I can order the meal I want

As a customer
I would like to check that the total I have been given matches the sum of the various dishes in my current order
So that I can verify that my order is correct

As a customer
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered
So that I am reassured that my order will be delivered on time
```


## Approach

- After reviewing the user stories I thought through my class design and created the table below.

- Now onto the setup:
  * I began with Sinatra set up.
  * Initialzing RSpec.
  * Creating the folder structure require.
- Following this I began writing my feature and unit tests to fulfil the first user story.
- Moving onto the second user story I used a test-driven approach to build the core game logic.
- Once this was done I refactored the controller and view pages to enable a user to play rock-paper-scissors against the computer.
- Final step I decided to change the user interface so I refactored the design to use the script `bin/takeaway`.

## TODO

### My class design approach

| **Objects** | **Messages**        |
|-------------|---------------------|
| TakeAway    |                 |
|             |   |
|             |             |
|             |  |
| Order       |         |
|             | ?           |
| Menu     | ?             |

## How to run

- Clone this repo `git clone [url]`.
- Navigate to the takeaway-challenge folder `cd takeaway-challenge`.
- Run `gem install bundle` if bundler isn't installed.
- Run `bundle`
- On your terminal, run `ruby bin/takeaway` to run the script.
- Place your order.
  * caveat sms's only get sent to me at this time.

## Screenshots

Welcome screen invites you order:

![Screenshot](http://imgur.com/FXfFeHI.png)

Choose your takeaway & number of:

![Screenshot](http://i.imgur.com/stIi5AK.png)

Type `done` when ready to place your order:

![Screenshot](http://i.imgur.com/xRAHCPu.png)

Once ordered a sms is sent to your (my) phone:

![Screenshot](http://i.imgur.com/gYvKk7v.png?1)

## Tools/Languages

- Ruby v 2.3.1
- rspec
- envyable


### TODO
## Future enhancements...
- ability to change sms number to send txt to
