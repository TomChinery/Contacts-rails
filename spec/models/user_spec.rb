require 'spec_helper'

describe User do

  it "should create new user in database" do

    auth = {
      :provider => "google_oauth2",
      :uid => "123456789",
      :info => {
        :name => "John Doe",
        :email => "john@company_name.com",
        :image => "https://lh3.googleusercontent.com/url/photo.jpg",
      },
      :credentials => {
        :token => "token",
        :refresh_token => "another_token",
        :expires_at => 1354920555,
      }
    }

    User.create_from_omniauth(auth)

    assert_equal User.find(1).name, "John Doe", "User was not updated"

  end

  it "should update existing user in database"

    auth_updated = {
      :provider => "google_oauth2",
      :uid => "123456789",
      :info => {
        :name => "Tom Doe",
        :email => "john@company_name.com",
        :image => "https://lh3.googleusercontent.com/url/photo.jpg",
      },
      :credentials => {
        :token => "token",
        :refresh_token => "another_token",
        :expires_at => 1354920555,
      }
    }

    User.create_from_omniauth(auth_updated)

    assert_equal User.find(1).name, "Tom Doe", "User was not updated"

  end

end
