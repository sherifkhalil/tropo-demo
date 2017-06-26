class DemoController < ApplicationController
    
    skip_before_action :verify_authenticity_token

    def index

        t = Tropo::Generator.new
        t.say(:value => "welcome to tropo demo!")
        render :json => t.response
    end    
end
