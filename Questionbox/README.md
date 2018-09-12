# README
Description
For this two-day project, your team will build a question and answer platform, similar to Stack Overflow in format, although you can theme it however you like. After a few days, your application will allow people to ask questions, receive answers, and mark an answer as valid. This application should have a front end.

DONE - The application should be styled with Bootstrap or another css framework.

On the first day, your application should:

DONE - Allow a user to create a question.

DONE - That question should allow for several paragraphs of formattable text. 

DEFER - Allow your users to use Markdown for authoring questions. Redcarpet is a good gem for rendering Markdown as HTML. This blog post may help as well.

DONE - Allow questions to have answers.

DONE - Allow unauthenticated users to view questions and answers.

DONE - Have registration and login.

DONE - Every question and every answer should be associated with a user.

DONE - Allow an authenticated user to create a question or answer an existing question.

DONE - A user should be able to view all their questions on a user profile page.

Questions cannot be edited once they have been asked (note: allowing editing of unanswered questions is listed below as an extra challenge).

DONE - A question can be deleted by its author, whether answered or unanswered. If it is deleted, all associated answers should also be deleted.

On the second day, your application should:

Send an email to a user when someone posts an answer to a question.

DONE - Paginate the index of questions with Kaminari.

DONE - Allow a user to upload a profile photo.

Allow the original author of the question to mark an answer as accepted.

Extra features and challenges
Use AJAX to update the page when a user submits an answer to a question.
Allow an unanswered question to be edited.
Allow the author of an answer to delete or edit that answer.
Allow a user to change their password via a link from the user profile page.
Deploy to Heroku. Note that this will require a bit more work to allow uploads and emails.
You'll need to configure a storage backend like Amazon S3 in order to upload files.
To send email from your production app you'll need an add-on for Heroku (e.g. SendGrid, MailGun, or SparkPost).
Send an email to a user to reset their password if they have forgotten it, and allow them to reset it.
What else would make this application better?

***************************************************

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
