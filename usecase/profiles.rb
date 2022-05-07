require "net/http"
require "json"

module Usecase
  class Profiles
    def self.find_profile_by_username(username)
      profile_list = Repository::ProfileList.profile_list

      if profile_list[username].nil?
        profile_response = Github::Api.new.find_by_username(username)
        profile = JSON.parse(profile_response)

        respotiroy = Repository::ProfileList.new
        respotiroy.add_username(username, profile)
      end

      profile
    end
  end
end
