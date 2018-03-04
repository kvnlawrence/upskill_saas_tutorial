=begin
When server gets get request it looks at routes.rb and finds the right controller action. 
Controller sends right model and view file
=end

class ContactsController < ApplicationController
  
    # GET request to /contact-us
    # Show new contact form
    def new
  @contact = Contact.new
end
=begin
  ^ MVC example: Controller action does two things. 
  1) Rails is asked to read corrosponding model file 'Contact' and learns of validations. 
  2) Rails looks for corrosponding view-file name (i.e. new)
=end

# Post request /contacts
def create
  #Mass assignment of form fields into Contact object
  @contact = Contact.new(contact_params)
  # This is mass assigning each contact w/ fields w/ the params.require below
  # Save the Contact Object to the database
  if @contact.save
    # Store formfields via paramaters into variables
    name = params[:contact][:name]
    email = params[:contact][:email]
    body = params[:contact][:comments]
    # Plug variables into Contact Mailer email method and send email
    ContactMailer.contact_email(name, email, body).deliver
    # Store success message in flash hash so that it can be displayed and 
    # redirect to the new action.
    #Goes into contact form grab the name,email,comments, 
    #associates it with corrosponding variables 
    #then uses it in the next line
    flash[:success] = "Message sent."
     redirect_to new_contact_path
  else
    # If Contact object doesn't save, 
    # store errors in flash hash,
    # and redirect to the new action
    flash[:danger] = @contact.errors.full_messages.join(", ")
    #.join takes anything from an array--[x..y]--into a string
    #full_messages.join is providing all rails expected messages 'name can't be
    #blank, emails can't be blank, etc.
     redirect_to new_contact_path
  end
end
private
  # To collect data from form, we need to use
  # strong parameters and whitelist the form fields
  def contact_params
     params.require(:contact).permit(:name, :email, :comments)
  end
        #Adds requirement
end

