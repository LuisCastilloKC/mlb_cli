
class Cli
    include PlayerDetail::InstanceMethods

    def call

        puts ""
        puts ""
        puts "   |  Welcome to The New York Yankees 40 Players  |"
        puts "    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ "
        puts ""
        puts "       Enter 'Yankees' to display the 40 players"
        puts "         To exit the application, enter 'exit'"
        Api.get_data
         menu
    end
        
    def menu 
           input = gets.strip.downcase
        if input == "yankees"
            players_list
        elsif input == "exit"
            bye_bye
        else
            invalid_entry
        end
    end

    def menu_two
        puts "Enter 'Yankees' to list the Player"
        puts "Enter 'exit'"
        
           input = gets.strip.downcase   
        if input == "yankees"
            players_list
        elsif input == "exit"
            bye_bye
        else
            invalid_entry
        end
    end


    def bye_bye
        puts " You have exited the App, see you next time!"
        exit(true)
    end

    def invalid_entry
        puts "Invalid entry try again"
        menu_two
    end
end
