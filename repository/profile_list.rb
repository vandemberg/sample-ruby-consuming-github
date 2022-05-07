module Repository
  class ProfileList
    @@profile_list = {}

    def add_username(username, hash)
      @@profile_list[username] = hash
    end

    def self.profile_list
      @@profile_list
    end
  end
end
