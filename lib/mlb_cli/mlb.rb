class Player

    attr_accessor :name_display_first_last, :position_txt, :jersey_number, :team_name, :bats

    @@all = []

    def initialize(hash)
        hash.each do |k, v|
            self.send(("#{k}="), v) if self.respond_to?(("#{k}="))
        end
        save
    end
    
    def self.all
        @@all
    end
    
    def save
        @@all << self
    end
    
    def self.find_by_name(name)
        self.all.select do |player_data|
            player_data.name_display_first_last.downcase == name.downcase
           #binding.pry
        end
    end
end





# row: [
#     {
#     position_txt: "P",
#     weight: "190",
#     name_display_first_last: "Albert Abreu",
#     college: "",
#     height_inches: "2",
#     starter_sw: "N",
#     jersey_number: "84",
#     end_date: "",
#     name_first: "Albert",
#     bats: "R",
#     team_code: "nya",
#     height_feet: "6",
#     pro_debut_date: "2020-08-08T00:00:00",
#     status_code: "A",
#     primary_position: "1",
#     birth_date: "1995-09-26T00:00:00",
#     team_abbrev: "NYY",
#     throws: "R",
#     team_name: "New York Yankees",
#     name_display_last_first: "Abreu, Albert",
#     name_use: "Albert",
#     player_id: "656061",
#     name_last: "Abreu",
#     team_id: "147",
#     start_date: "2017-11-20T00:00:00",
#     name_full: "Abreu, Albert"
#     },