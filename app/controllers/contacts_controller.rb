=begin
When server gets get request it looks at routes.rb and finds the right controller action. 
Controller sends right model and view file
=end

class ContactsController < ApplicationController
    def new
  @contact = Contact.new
end
=begin
  ^ MVC example: Controller action does two things. 
  1) Rails is asked to read corrosponding model file 'Contact' and learns of validations. 
  2) Rails looks for corrosponding view-file name (i.e. new)
=end

def create
  @contact = Contact.new(contact_params)
  # This is mass assigning each contact w/ fields w/ the params.require below
  if @contact.save
    flash[:success] = "Message sent."
     redirect_to new_contact_path
  else
    flash[:danger] = @contact.errors.full_messages.join(", ")
    #.join takes anything from an array--[x..y]--into a string
    #full_messages.join is providing all rails expected messages 'name can't be
    #blank, emails can't be blank, etc.
     redirect_to new_contact_path
  end
end
private
  def contact_params
     params.require(:contact).permit(:name, :email, :comments)
  end
        #Adds requirement
end

