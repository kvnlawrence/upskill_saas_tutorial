class Character
    def initialize (fname, nname, allegiance, str, dex)
        @first_name = fname
        @nick_name = nname
        @allegiance = allegiance
        @strength = str
        @dexterity = dex
    end 
    
    def introduction
        puts "I'm #{@first_name} #{@nick_name} of the #{@allegiance}."
    end
    
    def character_details
        puts "#{@first_name} has #{@strength} strength and #{@dexterity} dexterity."
    end
    
end

character_1 = Character.new("Kaladin","Stormblessed","Windrunners", 50, 99)
character_2 = Character.new("Amaram", "of the third dahn", "Sons of Honor", 99, 50)

character_2.introduction
character_2.character_details