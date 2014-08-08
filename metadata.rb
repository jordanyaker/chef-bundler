name             'bundler'
maintainer       'Jordan Yaker'
maintainer_email 'jordan.e.yaker@gmail.com'
license          'All rights reserved'
description      'Installs the bundler gem and provides recipes to bundle actions'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.8.3'

recipe "bundler",          "Installs the bundler gem on the system."
recipe "bundler::install", "Installs the gems specified by the Gemfile or Gemfile.lock files for an application."
recipe "bundler::update",  "Update the gem dependencies to their latest versions for an application."
