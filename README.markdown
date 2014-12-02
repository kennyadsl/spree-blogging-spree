This fork updates extension to work with Spree 0.30 and Rails 3. Installation via gem (bundler)

[BloggingSpree](http://github.com/jaymendoza/spree-blogging-spree/)
---------------

Originally forked from [paulcc/spree-blog](http://github.com/paulcc/spree-blog/), this extension intends to offer a more complete blogging solution for use within the Spree E-Commerce application. It currently consists of a blog, news archive, and a news archive widget written in jQuery.

See the [issue tracker](http://github.com/jaymendoza/spree-blogging-spree/issues) for future plans.


Installation
------------
Add to your Gemfile:
    gem 'spree_blogging_spree', :git => 'git://github.com/divineforest/spree-blogging-spree.git'

Run:
    bundle install
    rails g spree_blogging_spree:install
    rake db:migrate`

Compatibility
-------------

* Spree 0.30

Dependencies
------------

* is_taggable
* jQuery
* nicEdit *(included)*

Testing
-------
NB: tests may not work with Spree 0.30 and Rails 3

* shoulda
* factory_girl
* Spork

The included spec_helper.rb is configured for use with Spork due to Spree's extended loading time.

Following the lead of the Spree development team, all tests have been converted to shoulda from RSpec.

Disqus
-------------

You can enable the [disqus](https://disqus.com/about/) comments for your blog articles configuring these preferences:
*   `Spree::BloggingSpree::Config[:use_disqus]`: true/false (global enable/disable disqus comments)
*   `Spree::BloggingSpree::Config[:disqus_shortname]`: 'yourdiscussion' (when you add a new website in the disqus administration panel [https://disqus.com/admin/create/](https://disqus.com/admin/create/) you must define a Unique Disqus URL yourdiscussion.disqus.com. 'yourdiscussion' will be your website specific disqus_shortname)
*   `Spree::BloggingSpree::Config[:disqus_title_sitename]`: 'yoursiteidentifier' (this preference will be passed to disqus to create the title of the discussion inside disqus moderation panel. If not defined, the title of the discussion will be the same of article title in your spree blog, else it'll be composed like this: "yoursiteidentifier - your article name")
