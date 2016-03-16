require 'rails_helper'

RSpec.describe "resources/new", type: :view do
  before(:each) do
    assign(:resource, Resource.new(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :description => "MyText",
      :city => "MyString",
      :state => 1,
      :zipcode => "MyString",
      :food => false,
      :health => false,
      :shelter => false,
      :user_id => 1,
      :latitude => 1.5,
      :longitude => 1.5,
      :street => "MyString",
      :shares => 1
    ))
  end

  it "renders new resource form" do
    render

    assert_select "form[action=?][method=?]", resources_path, "post" do

      assert_select "input#resource_name[name=?]", "resource[name]"

      assert_select "input#resource_address[name=?]", "resource[address]"

      assert_select "input#resource_phone[name=?]", "resource[phone]"

      assert_select "textarea#resource_description[name=?]", "resource[description]"

      assert_select "input#resource_city[name=?]", "resource[city]"

      assert_select "input#resource_state[name=?]", "resource[state]"

      assert_select "input#resource_zipcode[name=?]", "resource[zipcode]"

      assert_select "input#resource_food[name=?]", "resource[food]"

      assert_select "input#resource_health[name=?]", "resource[health]"

      assert_select "input#resource_shelter[name=?]", "resource[shelter]"

      assert_select "input#resource_user_id[name=?]", "resource[user_id]"

      assert_select "input#resource_latitude[name=?]", "resource[latitude]"

      assert_select "input#resource_longitude[name=?]", "resource[longitude]"

      assert_select "input#resource_street[name=?]", "resource[street]"

      assert_select "input#resource_shares[name=?]", "resource[shares]"
    end
  end
end
