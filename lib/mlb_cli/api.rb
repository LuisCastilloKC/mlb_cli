require 'httparty'


class Api

def self.get_data
    response = HTTParty.get("http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27")
    rest = response["roster_40"]["queryResults"]["row"]
    rest.map do |api_result|
        Player.new(api_result)
        #player = Player.new(name: result["name_display_first_last"])
        #player_name = hash_data["name_display_first_last"]
    #player = Player.new(name: result["name_display_first_last"])
    #player.name = result["name_display_first_last"]
        
       # player_weight = result["weight"]
        #binding.pry
        end
    end
end
# 40 Roster from the Yankees = http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27

# class Yankees_40_Players
#     include HTTParty 
#     base_uri "http://lookup-service-prod.mlb.com"

#     def posts
#         self.class.get('/json/named.roster_40.bam?team_id=%27147%27')
#     end
# end

# x = Yankees_40_Players.new
# x.posts.each do |key, value|
#     p value
# end

         # response = HTTParty.get("http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27")

          # response["roster_40"]["queryResults"]["row"][0]["name_last"]


# response.each do |key, value|
#     if key == "bats"
#         puts value["roster_40"][:copyRight]["queryResults"]["row"]
#     end
# end
#puts resp["roster_40"]["queryResults"]["row"][0]["weight"]


#class API

    # def self.get_data
    #     response = RestClient.get("http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27")
    #     yankees_baseball JSON.parse(response.body)["roster_40"]
    #     yankees_baseball.each do |yankees|
    #         Yankees.new(yankees)
    #     end
    # end

    


#end
# class Player

#     attr_accessor :name

#     @@all = []

#     def initialize(name:)
#         @name = name
#     end

#     def self.all
#         @@all
#     end

#     def save
#         @@all << self
#     end
    

# end

# puts Api.get_data

# position_txt: "P",
# weight: "190",
# name_display_first_last: "Albert Abreu",
# college: "",
# height_inches: "2",
# starter_sw: "N",
# jersey_number: "84",
# end_date: "",
# name_first: "Albert",
# bats: "R",
# team_code: "nya",
# height_feet: "6",
# pro_debut_date: "2020-08-08T00:00:00",
# status_code: "A",
# primary_position: "1",
# birth_date: "1995-09-26T00:00:00",
# team_abbrev: "NYY",
# throws: "R",
# team_name: "New York Yankees",
# name_display_last_first: "Abreu, Albert",
# name_use: "Albert",
# player_id: "656061",
# name_last: "Abreu",
# team_id: "147",
# start_date: "2017-11-20T00:00:00",
# name_full: "Abreu, Albert"