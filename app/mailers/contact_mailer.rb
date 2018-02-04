Class Contact Mailer < ActionMailer::Base
    default to: 'lawrence.kvn@gmail.com'
    
    def contact.email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact Form Message')
    end
end