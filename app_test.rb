require 'test/unit'
require_relative "boot.rb"

class MyTest < Test::Unit::TestCase
  def test_get_profile_github
    username = "vandemberg"

    data_from_github = Usecase::Profiles.find_profile_by_username(username)

    profile_list = Repository::ProfileList.profile_list
    data_from_cache = profile_list[username]

    assert(data_from_github['login'], username)
    assert(data_from_cache['login'], username)
  end
end
