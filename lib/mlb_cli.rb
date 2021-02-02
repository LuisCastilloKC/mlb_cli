# frozen_string_literal: true
require 'pry'
require 'httparty'
# require 'rest-client'
# require 'json'

require_relative "./mlb_cli/player/player_info"
require_relative "./mlb_cli/api"
require_relative "./mlb_cli/cli"
require_relative "./mlb_cli/mlb"
require_relative "mlb_cli/version"

# est = RestClient.get("http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27")
# httparty = HTTParty.get("http://lookup-service-prod.mlb.com/json/named.roster_40.bam?team_id=%27147%27")

# binding.pry
# require all file here
# require all "TOOLSETS AND LIBRARIES"
# here is where we require "pry"

# module MlbCli
#   class Error < StandardError; end
#   # Your code goes here...
# end
