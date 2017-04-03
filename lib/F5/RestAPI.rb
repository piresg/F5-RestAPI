require "F5/RestAPI/version"
#require 'json'
require 'httparty'


module F5
  class Pool
    $auth = {username: 'admin', password: 'admin'}
    def self.list(ltm)
      include HTTParty
      pool_list = HTTParty.get("https://#{ltm}/mgmt/tm/ltm/pool", verify: false, basic_auth: $auth)
      puts pool_list
      end
    end
end
