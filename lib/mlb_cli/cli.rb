
class Cli
    include PlayerDetail::InstanceMethods

    def call
        puts "   |  Welcome to New York Yankees 40 Players  |"
        puts "   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ "
        puts ""
        puts "   Enter 'Yankees' to Display the 40 players"
        puts "   To exit the application, enter 'exit'"
        Api.get_data
         menu
        end
        
        def menu 
            input = nil
            while input != "yankees"
            input = gets.strip.downcase
            players_list
            while input != "exit"
                input = gets.strip.downcase
                bye_bye
            end
        end
        # input = gets.strip.downcase
        # if  input == "yankees"
        #     players_list
        # elsif input == "exit"
        #     bye_bye
        # else
        #     invalid_entry
        # end
    end

#     def players_list
#         #  binding.pry
#         Player.all.each_with_index do |api_result, index|
#             puts "#{index + 1}. #{api_result.name_display_first_last}"
#         end
#         puts ""
#         puts ""
#         puts "Enter Player Name to know more about"
        
#         input = gets.strip.capitalize
#         player_selection(input)
        
#     end
  
# def player_selection(player_data)
#     player_info = Player.find_by_name(player_data)
#     player_info.each do |info|
#         puts " Name: #{info.name_display_first_last}"
#         puts " Position: #{info.position_txt}"
#         puts " Jersey Number: #{info.jersey_number}"
#         puts " Batting: #{info.bats}"
#         puts " Team Name: #{info.team_name}"
#      end



    #    input = gets.strip.capitalize
    #    player_selection(input)
    



    #     if input == player_info
    #     players_list
    #     elsif input == "exit"
    #     bye_bye
    #     else
    #     invalid_entry
    # end


#end

    def bye_bye
        puts " You have exited the App, see you next time!"
    end

    def invalid_entry
        puts "Invalid entry try again"
        menu
    end
end


########################### Notes ################
    # def yankees_players_list

    #     Player.all.each.with_index(1) do |player, index|
    #         puts "#{index}. #{player.name}"
    #         #binding.pry
    #     end


        # puts "1. Brett Gardner CF"
        # puts "2. Aaron Judge RF"
        # puts "3. Giancarlo Stanton LF"
        # puts "4. Luke Voit DH"
        # puts "5. Miguel Andujar 3B"
        # puts "6. Gary Sanchez C"
        # puts "7. Greg Bird 1B"
        # puts "8. Gleyber Torres 2B"
        # puts "9. Troy Tulowitzki SS"
        # puts ""
        # puts ""
        # puts "Choose a number to know more about a Player"
        # input = gets.strip.downcase
        # yankees_players_list_selection(input)
    
#     end


#     def menu(input)
#         # input = gets.strip.downcase
        
#         if input == "yankees"          
#             yankees_players_list
#             binding.pry
#             # menu
#         elsif input == "exit"
#             goodbye
#         else
#             invalid_entry
#         end
#     end


#     def yankees_players_list_selection(yankees)
#       puts "#{yankees}"
#     end

#     def goodbye
#        puts "See you next time, for a the new Line-up!"
#     end

#     def invalid_entry
#         puts "Invalid entry, try again"
#         menu
#     end
# end

