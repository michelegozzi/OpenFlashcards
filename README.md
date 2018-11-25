# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation



rails g model Answer text:string
 
rails g model Question text:string

rails g migration add_topic_to_questions topic:references

rails g migration add_question_to_answers question:references

rails g migration add_password_digest_to_users password_digest:string
rails g migration add_remember_token_to_users remember_token:string





* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Repository
git remote add OpenFlashcards https://github.com/michelegozzi/OpenFlashcards.git
git remote -v
git pull OpenFlashcards master --allow-unrelated-histories
git push OpenFlashcards master

* heroku

https://devcenter.heroku.com/articles/getting-started-with-rails5



* ...
