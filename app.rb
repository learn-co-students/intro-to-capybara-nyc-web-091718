# We create an Application class and inherit from Sinatra::Base to give it all of the web superpowers needed to transform the standard Ruby class into a Sinatra controller.

class Application < Sinatra::Base
  # Within our Application controller, we use the Sinatra DSL to create a GET route at the / URL. We tell our application to respond to HTTP GET requests to / by rendering the designated ERB template or HTML.
  get '/' do
      erb :index
    end
# The line erb :index tells the application to render, or deliver to the user's browser, the file in views/index.erb

# New route to respond to the form submission
  post '/greet' do
    erb :greet
  end
end
