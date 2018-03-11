class HubspotController < ApplicationController
    
    def show
         @contacts = (Hubspot::Contact.all).each do |contact|
                info = contact.properties
    end
end 