module Github
  class Api
    def initialize
      @base_url = "https://api.github.com"
    end

    def find_by_username(username)
      uri = URI("#{@base_url}/users/#{username}")
      Net::HTTP.get(uri)
    end
  end
end
