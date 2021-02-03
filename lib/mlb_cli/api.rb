require 'httparty'
class Api

def self.get_data
    response = HTTParty.get("http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27")
    rest = response["roster_40"]["queryResults"]["row"]
    rest.map do |api_result|
        Player.new(api_result)
        end
    end
end
