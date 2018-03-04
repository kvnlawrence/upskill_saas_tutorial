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

BOOTSTRAP
You'll get used to adding container-row-column for each view page
<div class="container">
  <div class="row">
    <div class="col-md-4">
        ...page...
Add grey background using <div class="well"> 
Added 'form-group' into every existing form div to add bootstrap spacing. 
Added to existing form fields either ', class: 'form-control'' or ',class: 'btn btn-success''
Use 'navbar-btn' anytime your using navbar buttons in boostrap

RAILS IN HTML FILES 
If you just want to compute something in that background you only need <% %>
exp <% 2+2 %>
If you want to show anything on the page you'll need to add =
exp <%= link_to .... %>

Using Rails Routes command
'Get' request means it's a url they can go to
'Post' is a url they can submit a form to. It's not a page unless it says 'get'

Don't confuse css 'class' with object orientated programing 'class' (in ruby files). Different! 
    CSS class starts with a . like .alert-notice { ... }
    Ruby class 'class PagesController ....' is different
    
