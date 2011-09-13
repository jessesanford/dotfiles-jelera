#!/bin/bash
clear

cd $HOME

echo "Install Node Version Manager (NVM)"
echo "=================================="
git clone git://github.com/creationix/nvm.git ~/.nvm

echo ""
echo "done ... Installing nvm"
sleep 3
clear

echo "Install Ruby Version Manager (RVM)"
echo "=================================="
bash < <(curl -s https://rvm.beginrescueend.com/install/rvm)

echo ""
echo "done ... Installing rvm"
sleep 3
clear

echo " ################################ "
echo " #  For Ruby/Rails Development  # "
echo " ################################ "
echo ""
echo "Now, proceed to install Ruby using rvm like :"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "$ rvm install 1.8.7 && rvm install 1.9.2"
echo ""
echo ""
echo "Select the default Ruby for the development environment"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "$ rvm use 1.9.2 --default"
echo ""
echo ""
echo "then, install Ruby on Rails 3 (using ruby 1.9.2 as default)"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "$ gem install rails"
echo ""
echo ""
echo " ############################# "
echo " #  For Node.js Development  # "
echo " ############################# "
echo ""
echo "Sync NVM with the cloud and then, install Node (stable)"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "$ nvm sync && nvm install stable"
echo ""
echo "Install express and jshint using NPM"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
echo "$ npm install express && npm install jshint -g"
echo ""
echo ""
