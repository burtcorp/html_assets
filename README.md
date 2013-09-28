## Installation with Rails 3.1+

Load `html_assets` in your `Gemfile` as part of the `assets` group

    group :assets do
      gem 'html_assets'
    end

## Precompiling

`html_assets` also works when you are precompiling your assets.

## Templates directory

You should locate your templates with your other assets, for example `app/assets/javascripts/templates`. In your JavaScript manifest file, use `require_tree` to pull in the templates

    //= require_tree ./templates

# Thanks

Thank you Les Hill for [handlebars_assets](https://github.com/leshill/handlebars_assets) which this gem is heavily influenced by.

# Contributing

Pull requests are welcome! Please do not update the version number.

In a nutshell:

1. Fork
1. Create a topic branch - git checkout -b my_branch
1. Push to your branch - git push origin my_branch
1. Create a Pull Request from your branch
1. That's it!
