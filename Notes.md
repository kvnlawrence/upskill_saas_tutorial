<!-- 

USING THE RAILS CONSOLE

"rails c" (c short for contact)

Using rails console --sandbox makes sure you won't make changes to the server
Hirb.enable will change your data into tables while in the console("rails console")

In html documents you can enbed ruby using <% %>

* Function inside of a class is called a method

HOW MVC WORKS 

https://ide.c9.io/kvnlawrence/rails-The controller file, routes file, and view file all work together
It works something like this:
    1. Someone hits home page -> 
    2. routes file reads root pointing to pages controller and home method (pages#home) -> 
    3. rails checks controller file and see home action -> 
    4. rails gathers corresponding view file -> 
    5. sends all this back to user 
    
    
Typing "lorem" on html pages then tab will provide extra text