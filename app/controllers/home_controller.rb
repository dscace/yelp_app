class HomeController < ApplicationController
  def index
  end

  def results

    # params coming the form in the index page
    # capitalization (or lack thereof) shouldn't be a problem
    @food = 'corndogs'
    @location = params[:location]

    # the client search set up by the Yelp gem
    # takes only two arguments, so if I want to
    # pass more, I can include them in a hash
    parameters = { term: @food, limit: 6 }

    # using the Yelp gem to make the API call
    # the two arguments passed are the location I
    # want to search for, and then the extra parameters
    @results = Yelp.client.search(@location, parameters)

   
  end

end
