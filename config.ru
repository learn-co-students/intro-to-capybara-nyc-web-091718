# Write your code here!
require 'sinatra'

require_relative './app'

run Application

# The final piece of the puzzle is a config.ru file to put everything together and start our Sinatra application. This is the file shotgun or rackup will read to start your local application server, and it's also the file our test suite is using to define our application –– remember
