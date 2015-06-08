require 'spec_helper'

describe Contact do
  it "should grab contacts from Google" do

    contacts = Contact.all!

    assert_equals
  end

  it "should parse xml to object" do

    Contact.xml_to_object(some_xml)

  end
end
