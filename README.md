The app can be found [here](http://grapevineim.herokuapp.com/)

Make sure you have postgres installed on your machine.

You will need to run the following commands to get the project up on your local environment after you install rails.

```
bundle
rake db:create
rake db:migrate
rails server
```

  - The landing page html is located at `app/view/pages/landing.html`.
  - The new card page html is located at `app/view/cards/new.html.erb`.
  - The scss the styles the cards is at `app/assets/stylesheets/cards.css.scss`
  - All the vendor javascripts are in the vendor folder.
  - CSS files must be explicitly required in the `app/assets/stylesheets/application.css.scss' file or they will not load.
