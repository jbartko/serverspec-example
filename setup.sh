#!/bin/bash

echo "-----"
echo "Installing vagrant plugins"
vagrant plugin install vagrant-berkshelf

echo "-----"
echo "Installing project gems"
echo "-----"
gem install bundler
bundle install
