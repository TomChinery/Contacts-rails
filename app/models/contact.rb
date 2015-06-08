class Contact < ActiveRecord::Base

  belongs_to :user

  include HTTParty

  def self.all!(token, email)

    headers = { "Authorization" => "Bearer " + token, "GData-Version" => "3.0" }

    response = HTTParty.get("https://www.google.com/m8/feeds/contacts/#{email}/full", :headers => headers)

    binding.pry
  end

  def xml_to_object(xml_string)

    object = OpenStruct.new( Hash.from_xml(xml_string) )

    return object

  end

end
