#!/bin/bash
echo "-----"
echo "Installing project gems"
echo "-----"
chef gem install bundler
chef exec bundle install
