require "F5/RestAPI/version"
require 'httparty'

module F5
  class Pool
      def self.list(ltm, user, pass)
      auth = {username: user, password: pass}
      include HTTParty
      pool_list = HTTParty.get("https://#{ltm}/mgmt/tm/ltm/pool", verify: false, basic_auth: auth)     
      if (pool_list.code != 200) 
        puts 'Invalid user credentials or LTM IP Address'
      else
        pools = pool_list['items']
        pools.each do |pool|
          puts pool['name']
        end
      end
    end
  end
  class Vip
    def self.list
      puts "teste"
    end
  end
end

