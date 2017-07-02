It's such a simple and basic blog, I wasn't sure whether to create a README. But here it is.

# Anurag's Ruby on Rails Blog

A very simple blogging web app created as part of my mission to learn [Ruby](https://www.ruby-lang.org/en/) AND [Rails](http://rubyonrails.org).

Quite intentionally, it only supports creating new blog entries (articles), editing and deleting them, and adding comments to articles. Plus, it restricts access to creating / editing / deleting articles through HTTP basic authentication.

The blog also exposes API endpoints to get (JSON) data.
* /articles - gives you the complete list of articles
* /articles/:id - gives you a specific article by id (including all its comments)

I have used [Foundation](http://foundation.zurb.com) to style the blog, since [Bootstrap](http://getbootstrap.com/) now feels clichéd and stale. This also gave me a chance to learn Foundation.

## Installing
Run these commands in order:
1. git clone https://github.com/anuragbhd/ror-blog.git
2. bundle install
3. rake db:create
4. rake db:migrate

The last two commands will create and populate a local sqlite3 database. In a production setup, use something like PostgreSQL, MySQL, etc.

## Deploying
Hosting Rails apps can be tricky. For my purpose, I used Heroku (I am on the free plan). I think Heroku is awesomely cool. All I had to do was create a new Heroku app, link it with my github repo, and poof! The only extra thing I did was attach a PostgreSQL database. Here is the deployed, btw:
https://anurag-ror-blog.herokuapp.com

## Background
I was not attracted to Ruby due to the adulation I had seen for it online or among friends. Having a decent command over several languages, including PHP, Python, Java, C# and JavaScript, I did not want to learn a new language just for the sake of increasing weapons in my programming arsenal.

Early this year, upon recommendation of a former student, I checked out the much revered Ruby on Rails [Doctrine](http://rubyonrails.org/doctrine/). Boy, did it win me over in just one reading. Two tenets stood out to me - **Convention over Configuration** and **Optimize for programmer happiness**. Instantly, I installed Rails on my machine and created my first application, only to be later disappointed with my inability to understand much of code in the generated files.

For the next few months, I did my (very) slow and steady learning of Ruby. The free online book [Learn Ruby the Hard Way](https://learnrubythehardway.org) was my best friend during this time. Last week, I switched to a higher gear and finished all Ruby basics chapters in the book and straightway jumped to Ruby on Rails once again. I found its [Getting Started](guides.rubyonrails.org/getting_started.html) guide extremely helpful.

This time round, I was able to understand majority of the code. Stuff I did not understand, I googled. The things that stumped me the most, though, were those weird variable-like thingies prefixed with a colon. This [nice article](http://rubylearning.com/satishtalim/ruby_symbols.html) on Ruby symbols cleared that for me.

## See also
I created a slew of programs while practising Ruby. Do check out my sandbox [code repo](https://github.com/anuragbhd/code/tree/master/Ruby) if you are looking to get started with Ruby. There are useful comments in my code at important places.
