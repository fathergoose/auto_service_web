require 'rails_helper'

RSpec.describe "resources/index", type: :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :description => "MyText",
        :city => "City",
        :state => 1,
        :zipcode => "Zipcode",
        :food => false,
        :health => false,
        :shelter => false,
        :user_id => 2,
        :latitude => 1.5,
        :longitude => 1.5,
        :street => "Street",
        :shares => 3
      ),
      Resource.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :description => "MyText",
        :city => "City",
        :state => 1,
        :zipcode => "Zipcode",
        :food => false,
        :health => false,
        :shelter => false,
        :user_id => 2,
        :latitude => 1.5,
        :longitude => 1.5,
        :street => "Street",
        :shares => 3
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
