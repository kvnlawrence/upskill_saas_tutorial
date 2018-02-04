=begin
Controller file made w/ home.html.erb and routes.rb that work together to make the homepage
Thus, The file name (home, about, etc.) must match the method name from the controllers file

It works something like this:
    1. Someone hits home page -> 
    2. routes.rb file reads root pointing to pages controller and home method (pages#home) -> 
    3. rails checks controller file (pages_controller) and see home action -> 
    4. rails gathers corresponding view file -> 
    5. sends all this back to user 

The class 'pagescontroller' come from the rails backend

Not sure why I have an entry for home and about but not contact us. 
=end


class PagesController < ApplicationController
    def home
    end
end

    def about
    end