# Dropbox API Rails example

This is an example Rails app for the [dropbox-api Ruby gem](https://github.com/futuresimple/dropbox-api). 

It lets you to upload song to your dropbox folder and stream it here.

You can see the demo at [http://agile-dawn-1710.herokuapp.com](http://agile-dawn-1710.herokuapp.com)

In order to set it up, you need to create an app in the [Dropbox App Console](https://www.dropbox.com/developers/apps).

## Example local setup

Create config/settings.local.yml with the following content:

```yaml
development:
  dropbox:
    app_key: YOUR_DROPBOX_APP_KEY
    secret_key: YOUR_DROPBOX_APP_SECRET
```

Replace YOUR_DROPBOX_APP_KEY and YOUR_DROPBOX_APP_SECRET with key and secret of the app you created.

## Example setup on heroku

Once you're done setting up an up on heroku, run the following command to set up environment variable:

```sh
heroku config:set DROPBOX_KEY=[app_key] DROPBOX_SECRET=[app_secret] SECRET_KEY_BASE=[long random string]
```

All is left is a `git push heroku master`.

## License

Do whatever you feel like license.

