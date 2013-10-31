name             'bundler'
maintainer       'Jordan Yaker'
maintainer_email 'jordan.e.yaker@gmail.com'
license          'All rights reserved'
description      'Installs the bundler gem and provides recipes to bundle actions'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.6.0'

recipe "bundler",          "Installs the bundler gem on the system."
recipe "bundler::install", "Installs the gems specified by the Gemfile or Gemfile.lock files for an application."
recipe "bundler::update",  "Update the gem dependencies to their latest versions for an application."
recipe "bundler::pack",    "Package the .gem files required by an application into the application's vendor/cache director."

# provides chef_gem resource to chef <= 0.10.8 and fixes for chef < 10.12.0
depends "chef_gem"
depends "rvm"

supports "debian"
supports "ubuntu"
supports "suse"
supports "centos"
supports "amazon"
supports "redhat"
supports "fedora"
supports "gentoo"
supports "mac_os_x"
supports "mac_os_x_server"

# if using jruby, java is required on system
recommends  "java"

# for installing on OSX, this is required for installation and compilation
suggests "homebrew"
