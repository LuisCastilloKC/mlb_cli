class Player

    attr_accessor :name_display_first_last, :position_txt, :jersey_number, :team_name, :bats, :weight, :height_feet, :height_inches, :status_code

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
        end
    end
end