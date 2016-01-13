A sample Rails application showing how to use the [avatar_magick](https://github.com/bjedrocha/avatar_magick) plugin to generate initial avatars. Please see [this blog post](http://bjedrocha.com/rails/2016/01/06/default-gmail-style-avatars-in-rails/) for more information.

### Running the application

Clone the repo. Run `bundle install` to install required gems. Run `rake db:setup` to create a default user account and to seed a couple of contacts. Run with `rails s`. The default user account and password is `tdurden / password`.

### Branches

There are 3 branches in this project. The [master](https://github.com/bjedrocha/avatar-magick-example/tree/master) branch shows the simplest use case of just generating initial avatars. The [dragonfly-attachments](https://github.com/bjedrocha/avatar-magick-example/tree/dragonfly-attachments) branch shows how to handle image attachments using [Dragonfly](http://markevans.github.io/dragonfly/) while defaulting to initial avatars. Finally, the [paperclip-attachments](https://github.com/bjedrocha/avatar-magick-example/tree/paperclip-attachments) branch is similar but uses [paperclip](https://github.com/thoughtbot/paperclip) to handle image attachments.

#### Note

You must run `rake db:reset` when switching branches as the schema for dragonfly attachments is different than the schema for paperclip-attachments.
