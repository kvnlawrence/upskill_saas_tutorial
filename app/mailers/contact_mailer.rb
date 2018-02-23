class ContactMailer < ActionMailer::Base
  default to: 'lawrence.kvn@gmail.com'
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    mail(from: email, subject: 'Contact Form Message')
  end
end

=begin
NOTES ON 'CLASS' (example Class ContactMailer:
Class is a chunck of code related to one thing.
Class is "just catorgizing your code into logical groups. You're classifying your code"
Here it's related to the functionality of sending emails.

The arrow opporator '<' say's it's inhareting another class(here ActionMailer written by rails)
    You could go read actionmailer in the rails code

Function: Functions start w/ def. 
    Functions aren't a set of rules but instructions
    Functions inside classes are called 'methods' or 'actions'
    
This function has each entry in the form associated w/ a variable (name, email, etc.)
Placing something next to a function name like contact_email(name,email) is called paramaters(also called arguements)
once you added them you can use them below. 

We'll use all three instance variables in email html
template view. 

Customer enters in form fields, those values pop into the function and are assigned to 
    corrosponding variables. 
=end