=begin 
 Blueprint file for any contact object
 Objects = the list; name, email, etc. It knows this list based on how we 
 configured the database.
=end

class Contact < ActiveRecord::Base
    # Contact form validations
    validates :name, presence: true
    validates :email, presence: true
    validates :comments, presence: true
end

