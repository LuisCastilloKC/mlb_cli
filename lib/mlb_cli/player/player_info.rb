module PlayerDetail
    module InstanceMethods

            def players_list
              
                Player.all.each_with_index do |api_result, index|
                    puts "#{index + 1}. #{api_result.name_display_first_last}"
                end
                puts ""
                puts ""
                puts "Enter the Player Name to know more information"
                
                input = gets.strip.capitalize
                player_selection(input)               
            end
            
        def player_selection(player_data)
                player_info = Player.find_by_name(player_data)
            if  player_info.length == 1 
                player_info.each do |info|
                puts " Name: #{info.name_display_first_last}" 
                puts " Position: #{info.position_txt}"
                puts " Jersey Number: #{info.jersey_number}"
                puts " Bat: #{info.bats}"
                puts " Weight: #{info.weight}lbs"
                puts " Height: #{info.height_feet}'#{info.height_inches}\""
                puts " Status: #{info.status_code}"
                puts " Team Name: #{info.team_name}"
                puts ""
            end
            menu_two
        else
            invalid_entry
            end
        end
    end
end