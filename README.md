The app can be found [here](http://grapevineim.herokuapp.com/)

Make sure you have postgres installed on your machine.

You will need to run the following commands to get the project up on your local environment after you install rails.

```
bundle
rake db:create
rake db:migrate
rails server
```

### Where stuff is located
  - The landing page html is located at `app/view/pages/landing.html`.
  - The new card page html is located at `app/view/cards/new.html.erb`.
  - The scss the styles the cards is at `app/assets/stylesheets/cards.css.scss`
  - All the vendor javascripts are in the vendor folder.
  - CSS files must be explicitly required in the `app/assets/stylesheets/application.css.scss' file or they will not load.


### Response Mailer
  - When a response is collected, the `response_controller` create action will automatically send a mailer to the creator of the question.
  - The mailer WILL **NOT WORK** unless you have the environment variables set in an `.env` file in the root of the project. Mine is current set to a test gmail account. You can take a look the included `.env.example` file to see how to do this. Going forward, this will have to be configured to work with sendgrid, mandrill or another mailer of your choice first in `app/config/environments/production.rb` and then with the proper environment variables passed into [heroku](https://devcenter.heroku.com/articles/config-vars).
  - The mailer html text can be found in `app/views/response_mailer/send_response.slim` and the mailer subject and default from can be configured in `app/mailers/response_mailer.rb`.

