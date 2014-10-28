# Dropbox API Rails example

This is an example Rails app for the dropbox-api Ruby gem. It also includes controller and view specs.

It it is a simple app which displays all images in its own Dropbox folder.

You can see the demo at [https://dropbox-api-rails-example.herokuapp.com/](https://dropbox-api-rails-example.herokuapp.com/)

## Example setup on heroku

First, you need to create an app in the [Dropbox App Console](https://www.dropbox.com/developers/apps).

Then, set up a Heroku app.

Once you're done,

```sh
heroku config:set DROPBOX_KEY=[app_key] DROPBOX_SECRET=[app_secret] SECRET_KEY_BASE=[long random string]
```

All is left is a `git push heroku master`.

## License

Do whatever you feel like license.

