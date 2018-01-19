class ContactsController < ApplicationController
    def new
        @contact = Contact.new
        #Now everytime they go to the form and add an object (def new) it'll save
        #it to the instance vailable (@contact) 
    end
    
    def create 
        @contact = Contact.new(contact_params)
        if @contact.save
            redirect_to new_contact_path, notice: "Message sent."
        else
            redirect_to new_contact_path, notice: "Error occured."
        end
            #if the save is successful, redirect the user back to a 
            #new contact path(blank form) w/ a message. Else back to form w/ error
            #added place to display messages in view file
    end
    #^code to actually get it to save: def create ... end
    
    private
        def contact_params
           params.require(:contact).permit(:name, :email, :comments) 
        end
        #Adds requirement
end