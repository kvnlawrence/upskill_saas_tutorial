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
    
RUBY CLASSES. MAKING YOUR OWN CLASS
From austin: A class is a group of functions (maybe also objects?)
Classes are given a name in CamelCase like ContactsController

Example from https://www.youtube.com/watch?v=7myNdQyitXs :

class Warrior
    def initialize (name, clan, strength, dexterity)
        @name = name
        @clan = clan
        @strength = strength
        @dexterity = dexterity
    end

    def about
        puts "#{@name} is is a Warrior from the clan of #{@clan} with a strength 
        of #{strength} and a dexterity of #{@dexterity}."
    end
    
player_1 = Warrior.new ("Adolin","windrunners",50,99)
player_2 = Warrior.new ("Amaram","Sons of Honor",99, 50)

player_1.about      (will give sentence from def.about)

---
Can use instance params in view files
Anything after a ? in a url is information we can use in the next page

Models in rails is heavily tied to the schedma file too. If we say we drew it from
ActiveRecord.
If you're looking at a model like plan.rb also check that class against the 
corrosponding database in the schema. 

ACTIVE RECORD
Active Record is a shortcut through SQL the creators of rails made. Typing in "Contact.all" 
is actuall a Select command. You can add to_sql for any of these. Exp Contact.all.to_sql
Even @basic_plan = plan.find(1) is actually a shortcut through sql. 
When writing things in the console it's being trasnferred to sql.
Active record = active record querey language

PARAMATERS
Two kinds:
1. Sent from query string params (everything after ? in url)
2. Sent as part of POST data (through html form, like signup form)

SUBSTITUTION
Mentally interchanging what you see when you're coding. Important skill for developers


